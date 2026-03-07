#strength
effect give @a[scores={selectedEffect = 1, level = 1}] strength 5 0 true
effect give @a[scores={selectedEffect = 1, level = 2}] strength 5 1 true
effect give @a[scores={selectedEffect = 1, level = ..-1}] weakness 5 0 true
execute as @a[scores={selectedEffect = 1, level = -2}] run attribute @s minecraft:attack_damage base set 0

#speed/fireres
effect give @a[scores={selectedEffect = 2, level = 1..}] fire_resistance 5 0 true
effect give @a[scores={selectedEffect = 2, level = 2}] speed 5 0 true
effect give @a[scores={selectedEffect = 2, level = -1}] slowness 5 0 true
effect give @a[scores={selectedEffect = 2, level = -2}] slowness 5 1 true

#healthBoost
execute as @a[scores={selectedEffect = 3, level = 2}] run attribute @s minecraft:max_health base set 32
execute as @a[scores={selectedEffect = 3, level = 1}] run attribute @s minecraft:max_health base set 26
execute as @a[scores={selectedEffect = 3, level = 0}] run attribute @s minecraft:max_health base set 20
execute as @a[scores={selectedEffect = 3, level = -1}] run attribute @s minecraft:max_health base set 16
execute as @a[scores={selectedEffect = 3, level = -2}] run attribute @s minecraft:max_health base set 14

#haste
effect give @a[scores={selectedEffect=4,level=2}] haste 5 1 true
effect give @a[scores={selectedEffect=4,level=1}] haste 5 0 true
effect give @a[scores={selectedEffect=4,level=-1}] mining_fatigue 5 0 true
effect give @a[scores={selectedEffect=4,level=-2}] mining_fatigue 5 1 true

#hero
effect give @a[scores={selectedEffect=5,level=2}] hero_of_the_village 5 0 true
execute as @a[scores={selectedEffect=5,level=1..}] run attribute @s minecraft:luck base set 100

execute as @a[scores={selectedEffect=5}] at @s run data modify entity @e[sort=nearest,limit=1,type=minecraft:villager] Gossips insert 0 value {Target: [I; 1000000000,1000000000,1000000000,1000000000], Type: "minor_negative", Value:100}
execute as @a[scores={selectedEffect=5}] at @s run data modify entity @e[sort=nearest,limit=1,type=minecraft:villager] Gossips[0].Target set from entity @s UUID
execute as @a[scores={selectedEffect=5,level=0..}] at @s run data modify entity @e[sort=nearest,limit=1,type=minecraft:villager] Gossips[0].Value set value 0
execute as @a[scores={selectedEffect=5,level=-1}] at @s run data modify entity @e[sort=nearest,limit=1,type=minecraft:villager] Gossips[0].Value set value 100
execute as @a[scores={selectedEffect=5,level=-2}] at @s run data modify entity @e[sort=nearest,limit=1,type=minecraft:villager] Gossips[0].Value set value 200

#regen/resistence
effect give @a[scores={selectedEffect=6,level=2}] resistance 5 0 true
effect give @a[scores={selectedEffect=6,level=1..}] regeneration 5 0 true
execute as @a[scores={selectedEffect = 6, level = 0..}] run attribute @s minecraft:armor base reset
execute as @a[scores={selectedEffect = 6, level = -1}] run attribute @s minecraft:armor base set -10
execute as @a[scores={selectedEffect = 6, level = -2}] run attribute @s minecraft:armor base set -20

#water breathing
effect give @a[scores={selectedEffect=7,level=1..}] water_breathing 5 0 true



schedule function effects_smp:one_sec 1s