data merge entity @s {Invulnerable:1b,Glowing:1b,Age:-30000}
execute if entity @s[y=0,distance=..15] run data merge entity @s {Motion:[0.0d,0.25d,0.0d],NoGravity:1b}
execute unless entity @s[y=0,distance=..15] run data merge entity @s {NoGravity:0b}
execute if block ~ ~ ~ lava at @r[tag=playing,gamemode=adventure] run spreadplayers ~ ~ 0 50 false @s
particle happy_villager ~ ~ ~ 5 5 5 0.1 1