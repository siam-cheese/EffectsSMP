execute store result score @s selectedEFfect run random value 1..7
execute if entity @s[scores={selectedEFfect=1}] run team join strength
execute if entity @s[scores={selectedEFfect=2}] run team join speed
execute if entity @s[scores={selectedEFfect=3}] run team join health_boost
execute if entity @s[scores={selectedEFfect=4}] run team join haste
execute if entity @s[scores={selectedEFfect=5}] run team join hero
execute if entity @s[scores={selectedEFfect=6}] run team join regen
execute if entity @s[scores={selectedEFfect=7}] run team join water