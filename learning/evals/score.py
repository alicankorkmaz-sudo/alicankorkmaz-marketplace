# score.py OUT.json DIR [DIR...]  - rescore runs with the CURRENT grader files.
# Programmatic graders: harness verdict. llm graders: re-judged (sonnet, majority of 3) on the stored final reply.
# Runs that died on infra errors (API Error / overloaded / safeguards) are dropped. Later DIRs override earlier ones per case.
import json, os, re, subprocess, sys
from concurrent.futures import ThreadPoolExecutor
E=os.path.dirname(os.path.abspath(__file__))
out=sys.argv[1]; dirs=sys.argv[2:]
cases={}
for d in dirs:
    for c in json.load(open(f'{d}/aggregate-result.json'))['cases']:
        cases[c['name']]=c['arms']['with']
SYS="You are an eval judge. Read the rubric and the reply. Decide strictly by the rubric. End your answer with a final line that is exactly VERDICT: PASS or VERDICT: FAIL."
def judge1(rubric,reply):
    p=f"<rubric>\n{rubric}\n</rubric>\n\n<reply>\n{reply}\n</reply>"
    o=subprocess.run(['claude','-p','--model','sonnet','--system-prompt',SYS,'--tools','','--disable-slash-commands','--setting-sources','','--no-session-persistence'],input=p,capture_output=True,text=True,cwd=os.path.dirname(os.path.abspath(__file__))).stdout
    m=re.findall(r'VERDICT:\s*(PASS|FAIL)',o); return m[-1]=='PASS' if m else False
def judge(rubric,reply):
    v=[judge1(rubric,reply) for _ in range(3)]; return sum(v)>=2, v
tasks=[]; runs=[]
for name,rs in cases.items():
    for ri,r in enumerate(rs):
        if r['error'] and re.search(r'API Error|Overloaded|safeguards',r['error']): continue
        last=''
        for line in open(r['tracePath']):
            m=json.loads(line)
            if m.get('type')=='result': last=m.get('result') or ''
        gs=[]
        for g in r['graders']:
            txt=open(f"{E}/{name}/graders/{g['name']}.md").read()
            fm,body=txt.split('---',2)[1],txt.split('---',2)[2].strip()
            if 'type: llm' in fm: gs.append([g['name'],None,body])
            else: gs.append([g['name'],g['passed'],None])
        runs.append({'case':name,'run':ri+1,'graders':gs,'last':last})
jobs=[(r,g) for r in runs for g in r['graders'] if g[1] is None]
def do(j):
    r,g=j; ok,v=judge(g[2],r['last']); g[1]=ok; g.append(v)
with ThreadPoolExecutor(8) as ex: list(ex.map(do,jobs))
res={}
for r in runs:
    sc=sum(1 for g in r['graders'] if g[1])/len(r['graders'])
    res.setdefault(r['case'],[]).append({'run':r['run'],'score':sc,'fails':[g[0] for g in r['graders'] if not g[1]]})
split={}
for n in res:
    t=open(f'{E}/{n}/prompt.md').read(); split[n]='train' if 'tags: [train' in t else 'test'
summ={}
for part in ('train','test','all'):
    cs=[n for n in res if part=='all' or split[n]==part]
    summ[part]=sum(sum(x['score'] for x in res[n])/len(res[n]) for n in cs)/len(cs)
json.dump({'cases':res,'split':split,'summary':summ},open(out,'w'),indent=1)
for n in sorted(res, key=lambda n:(split[n],n)):
    print(f"{split[n]:5s} {n:40s} {sum(x['score'] for x in res[n])/len(res[n]):.2f}  {[round(x['score'],2) for x in res[n]]}  {[x['fails'] for x in res[n] if x['fails']]}")
print({k:round(v,3) for k,v in summ.items()})
