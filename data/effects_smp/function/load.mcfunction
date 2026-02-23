scoreboard objectives add selectedEFfect dummy
scoreboard objectives add level dummy
scoreboard objectives add killIncrease playerKillCount
scoreboard objectives add deathIncrement deathCount

#numbers
scoreboard objectives add nums dummy
scoreboard players set #1 nums 1

function effects_smp:one_sec

#teams
team add strength "strength"
team modify strength color gold
team add speed "speed"
team modify speed color blue
team add health_boost "health_boost"
team modify health_boost color red
team add haste "haste"
team modify haste color yellow
team add hero "hero"
team modify hero color green
team add regen "regen"
team modify regen color dark_red
team add water "water"
team modify water color dark_blue