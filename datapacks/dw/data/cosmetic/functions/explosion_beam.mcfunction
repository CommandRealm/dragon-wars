tp @s ~ ~ ~ facing entity @p[gamemode=adventure] 
tp @s ^ ^ ^0.85
particle dust 2 0.15 0 1 ~ ~ ~ 0.25 0.25 0.25 0 10
execute if entity @a[distance=..1,gamemode=adventure] run function cosmetic:beam_explode