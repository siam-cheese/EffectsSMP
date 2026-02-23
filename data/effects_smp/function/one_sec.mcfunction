#strength
effect give @a[scores={selectedEFfect = 1, level = 1}] strength 5 0 true
effect give @a[scores={selectedEFfect = 1, level = 2}] strength 5 1 true
effect give @a[scores={selectedEFfect = 1, level = -1}] weakness 5 0 true
effect give @a[scores={selectedEFfect = 1, level = -2}] weakness 5 1 true

#speed/fireres
effect give @a[scores={selectedEFfect = 2, level = 1..}] fire_resistance 5 1 true
effect give @a[scores={selectedEFfect = 2, level = 2}] speed 5 0 true
effect give @a[scores={selectedEFfect = 2, level = -1}] slowness 5 0 true
effect give @a[scores={selectedEFfect = 2, level = -2}] slowness 5 1 true




schedule function effects_smp:one_sec 1s