#strength
effect give @a[scores={selectedEFfect = 1, level = 1}] strength 5 0 true
effect give @a[scores={selectedEFfect = 1, level = 2}] strength 5 1 true
effect give @a[scores={selectedEFfect = 1, level = ..-1}] weakness 5 0 true
execute as @a[scores={selectedEFfect = 1, level = -2}] run attribute @s generic.attack_damage base set .1

#speed/fireres
effect give @a[scores={selectedEFfect = 2, level = 1..}] fire_resistance 5 1 true
effect give @a[scores={selectedEFfect = 2, level = 2}] speed 5 0 true
effect give @a[scores={selectedEFfect = 2, level = -1}] slowness 5 0 true
effect give @a[scores={selectedEFfect = 2, level = -2}] slowness 5 1 true

#healthBoost
execute as @a[scores={selectedEFfect = 3, level = 2}] run attribute @s generic.max_health base set 32
execute as @a[scores={selectedEFfect = 3, level = 1}] run attribute @s generic.max_health base set 26
execute as @a[scores={selectedEFfect = 3, level = 0}] run attribute @s generic.max_health base set 20
execute as @a[scores={selectedEFfect = 3, level = -1}] run attribute @s generic.max_health base set 16
execute as @a[scores={selectedEFfect = 3, level = -2}] run attribute @s generic.max_health base set 14

#haste
effect give @a[scores={selectedEFfect=4,level=2}] haste 5 1 true
effect give @a[scores={selectedEFfect=4,level=1}] haste 5 0 true
effect give @a[scores={selectedEFfect=4,level=-1}] mining_fatigue 5 0 true
effect give @a[scores={selectedEFfect=4,level=2}] mining_fatigue 5 1 true

#hero
effect give @a[scores={selectedEFfect=5,level=2}] hero_of_the_village 5 0 true
execute as @a[scores={selectedEFfect=5,level=1..}] run attribute @s generic.luck base set 10

#regen/resistence
effect give @a[scores={selectedEFfect=6,level=2}] resistance 5 0 true
effect give @a[scores={selectedEFfect=6,level=1..}] regeneration 5 0 true

#water breathing
effect give @a[scores={selectedEFfect=7,level=1..}] water_breathing 5 0 true



schedule function effects_smp:one_sec 1s