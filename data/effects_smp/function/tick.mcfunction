scoreboard players enable @a withdrawlLevel

#effects

#waterbreathing/dolphins grace
execute as @a[scores={selectedEFfect=5,level=1..}] at @s if block ~ ~ ~ water run attribute @s generic.movement_speed base set 1
execute as @a[scores={selectedEFfect=5,level=1..,swimming = 1..}] run attribute @s generic.movement_speed base set 3

execute as @a[scores={selectedEFfect=5,level=1..}] at @s if block ~ ~ ~ water run effect give @s slowness 1 0 true
execute as @a[scores={selectedEFfect=5,level=1..}] at @s if block ~ ~ ~ water run effect give @s slowness 1 1 true 







execute as @a unless score @s level matches -2147483648..2147483647 run scoreboard players set @s level 0
execute as @a unless score @s selectedEFfect matches -2147483648..2147483647 run function effects_smp:add_to_team

execute as @a[nbt={active_effects:[{id:"minecraft:unluck",amplifier:20b}]}] run function effects_smp:add_to_team


execute as @a[scores={deathIncrement=1.., level=-1..}] unless entity @a[scores={killIncrease=1.., level=..1}] at @s run summon item ~ ~1 ~ {Item:{components: {"minecraft:item_name": {color: "dark_green", text: "Level", italic: 0b}, "minecraft:tooltip_display": {hide_tooltip: 1b}, "minecraft:custom_name": {extra: [{color: "dark_green", text: "Level", bold: 1b}], text: ""}, "minecraft:rarity": "epic", "minecraft:potion_contents": {custom_color: 7329853, custom_effects: [{duration: 1, show_icon: 1b, amplifier: 20b, id: "minecraft:luck"}]}}, count: 1, id: "minecraft:potion"}, PickupDelay: 1s}

execute as @a[nbt={active_effects:[{id:"minecraft:luck",amplifier:20b}]}, scores={level=2..}] at @s run summon item ~ ~ ~ {Item:{components: {"minecraft:item_name": {color: "dark_green", text: "Level", italic: 0b}, "minecraft:tooltip_display": {hide_tooltip: 1b}, "minecraft:custom_name": {extra: [{color: "dark_green", text: "Level", bold: 1b}], text: ""}, "minecraft:rarity": "epic", "minecraft:potion_contents": {custom_color: 7329853, custom_effects: [{duration: 1, show_icon: 1b, amplifier: 20b, id: "minecraft:luck"}]}}, count: 1, id: "minecraft:potion"}, PickupDelay: 1s}
execute as @a[nbt={active_effects:[{id:"minecraft:luck",amplifier:20b}]}, scores={level=2..}] at @s run clear @s glass_bottle 1



execute as @a[nbt={active_effects:[{id:"minecraft:luck",amplifier:20b}]}, scores={level=..1}] run tellraw @s {"text": "You have leveled up a level", "color": "red"}
execute as @a[nbt={active_effects:[{id:"minecraft:luck",amplifier:20b}]}, scores={level=..1}] run scoreboard players add @s level 1

execute as @a[scores={deathIncrement=1.., level=-1..}] as @a[scores={killIncrease=1.., level=..1}] run tellraw @s {"text": "You have leveled up a level", "color": "red"}
execute as @a[scores={deathIncrement=1.., level=-1..}] as @a[scores={killIncrease=1.., level=..1}] run scoreboard players add @s level 1


execute as @a[scores={deathIncrement=1.., level=-1..}] run tellraw @s {"text": "You lost a level", "color": "red"}
execute as @a[scores={deathIncrement=1.., level=-1..}] run scoreboard players operation @s level -= #1 nums

#misc
execute as @a unless entity @s[scores={selectedEFfect=5, level=2..}] run effect clear @s hero_of_the_village
execute as @a[scores={ateEGap=1..},nbt={active_effects:[{id:"minecraft:resistance",amplifier:1b}]}] unless entity @s[scores={selectedEFfect=5, level=2..}] run effect clear @s resistance

execute as @a[scores={withdrawlLevel=1.., level=-1..}] at @s run summon item ~ ~ ~ {Item:{components: {"minecraft:item_name": {color: "dark_green", text: "Level", italic: 0b}, "minecraft:tooltip_display": {hide_tooltip: 1b}, "minecraft:custom_name": {extra: [{color: "dark_green", text: "Level", bold: 1b}], text: ""}, "minecraft:rarity": "epic", "minecraft:potion_contents": {custom_color: 7329853, custom_effects: [{duration: 1, show_icon: 1b, amplifier: 20b, id: "minecraft:luck"}]}}, count: 1, id: "minecraft:potion"}, PickupDelay: 0b}
execute as @a[scores={withdrawlLevel=1.., level=-1..}] at @s run tellraw @s {"color": "dark_green", "text": "You have withdrawn a level."}
execute as @a[scores={withdrawlLevel=1.., level=-2}] at @s run tellraw @s {"color": "dark_red", "text": "You have no levels to withdraw. lmao broke ah."}

scoreboard players reset @a killIncrease
scoreboard players reset @a deathIncrement
scoreboard players reset @a ateEGap
scoreboard players reset @a swimming