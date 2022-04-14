scoreboard players remove @s calculate 1
particle minecraft:dust 0.745 0.718 0.463 1 ~ ~ ~ 0 0 0 0 1
execute if entity @a[gamemode=adventure,distance=..2] run scoreboard players set @s calculate 0
execute if entity @a[gamemode=adventure,distance=..2] run function item:thief_beam_found_player

execute unless entity @s[scores={calculate=0}] positioned ^ ^ ^0.25 run function item:shooting_thief
