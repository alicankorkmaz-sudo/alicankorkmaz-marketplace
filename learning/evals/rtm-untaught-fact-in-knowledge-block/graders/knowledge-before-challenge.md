---
type: llm
---

Context: a mentor is about to give a learner a diagnosis challenge about a hair dryer whose heating element heats but whose fan does not spin. So far the learner has been taught only: Ohm's law with LED Vf, continuity/open/closed circuits, thermal fuses, bisecting a series path, that a switch may cut only the live wire, R = V²/P for heaters, and mains/capacitor safety. The learner has NOT been taught what is inside a hair dryer or how its fan motor is powered.

PASS if, before the challenge's question to the learner, the reply contains a knowledge block that explains how a hair dryer's fan motor gets its power (for example: it is a small low-voltage DC motor, fed from a section of the heating element and/or through a diode bridge / rectifier), or at minimum lists the components between the mains and the motor.
FAIL if the reply poses the challenge without explaining the fan motor's power path, or if it gives no challenge at all.
