scoreboard players remove @s swap_time 1
particle minecraft:dust 1 0.5 0 1 ~ ~ ~ 0 0 0 0 1
execute if entity @a[gamemode=adventure,distance=..2] run scoreboard players set @s swap_time 0
tag @a[gamemode=adventure,distance=..2] add swapped
execute if entity @a[gamemode=adventure,distance=..2] at @s run summon area_effect_cloud ^ ^ ^0.5 {Tags:["tp_swapped"],Duration:1}
execute as @e[tag=tp_swapped] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure]
execute as @e[tag=tp_swapped] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=tp_swapped] at @s run tp @s ~ ~ ~ ~180 ~
execute if entity @a[gamemode=adventure,distance=..2] run tp @s @p[tag=swapped]
execute if entity @a[gamemode=adventure,distance=..2] run tp @a[tag=swapped] @e[tag=tp_swapped,sort=nearest,limit=1]
execute unless entity @s[scores={swap_time=0}] positioned ^ ^ ^0.25 run function item:shooting_tp
tag @a remove swapped
kill @e[tag=tp_swapped]