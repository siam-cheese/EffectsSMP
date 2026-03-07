execute store result score @s selectedEffect run random value 1..7
team leave @s
execute if entity @s[scores={selectedEffect=1}] run team join strength
execute if entity @s[scores={selectedEffect=2}] run team join speed
execute if entity @s[scores={selectedEffect=3}] run team join health_boost
execute if entity @s[scores={selectedEffect=4}] run team join haste
execute if entity @s[scores={selectedEffect=5}] run team join hero
execute if entity @s[scores={selectedEffect=6}] run team join regen
execute if entity @s[scores={selectedEffect=7}] run team join water

execute at @s run playsound ui.button.click ambient @s ~ ~ ~ .5 .9 

attribute @s minecraft:max_health base reset
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:attack_damage base reset
attribute @s minecraft:luck base reset
attribute @s minecraft:armor base reset

title @s times 0 20 0
execute if entity @s[scores={selectedEffect=1}] run title @s title {"color": "gold", "text": "Strength"}
execute if entity @s[scores={selectedEffect=2}] run title @s title {"color": "blue", "text": "Speed"}
execute if entity @s[scores={selectedEffect=3}] run title @s title {"color": "red", "text": "Health"}
execute if entity @s[scores={selectedEffect=4}] run title @s title {"color": "yellow", "text": "Haste"}
execute if entity @s[scores={selectedEffect=5}] run title @s title {"color": "green", "text": "Hero"}
execute if entity @s[scores={selectedEffect=6}] run title @s title {"color": "dark_red", "text": "Regen"}
execute if entity @s[scores={selectedEffect=7}] run title @s title {"color": "dark_blue", "text": "Ocean"}

