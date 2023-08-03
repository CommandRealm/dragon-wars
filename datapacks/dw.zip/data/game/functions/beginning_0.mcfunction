execute if score $map map matches 0 run function game:map_spawn_0
execute if score $map map matches 1 run function game:map_spawn_1
execute if score $map map matches 2 run function game:map_spawn_2
execute if score $map map matches 3 run function game:map_spawn_3
execute if score $map map matches 4 run function game:map_spawn_4
execute if score $map map matches 5 run function game:map_spawn_5
execute if score $map map matches 6 run function game:map_spawn_6
execute if score $map map matches 7 run function game:map_spawn_7
execute if score $map map matches 8 run function game:map_spawn_8
execute if score $map map matches 9 run function game:map_spawn_9
execute if score $map map matches 10 run function game:map_spawn_10
execute if score $map map matches 11 run function game:map_spawn_11
execute if score $map map matches 12 run function game:map_spawn_12
execute if score $map map matches 13 run function game:map_spawn_13
execute if score $map map matches 14 run function game:map_spawn_14
execute if score $map map matches -1 run function game:map_spawn_15
execute unless score $number mode matches 3 as @e[tag=spawn] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["die_soon","respawn_point"],Duration:100000}
execute unless score $number mode matches 3 as @e[tag=spawn] at @s run tp @e[tag=respawn_point,distance=..2,limit=1,sort=nearest] @s
scoreboard players set @e[tag=firework] firework 1
item replace entity @a[tag=playing] inventory.8 with arrow 10
execute as @a[tag=playing] at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 100000 0.5
title @a[tag=playing] title {"text":"","color":"gold","bold":true}
effect clear @a[tag=playing]
tag @a remove get_spawn
tag @a[tag=playing] add get_spawn

execute as @r[tag=playing,tag=get_spawn] at @s run tp @s @e[tag=spawn,sort=random,limit=1,tag=set_spawn]
execute as @e[tag=spawn] at @s run tag @a[distance=..1] remove get_spawn
execute as @a[tag=playing] at @s run kill @e[tag=spawn,distance=..1]

execute as @r[tag=playing,tag=get_spawn] at @s run tp @s @e[tag=spawn,sort=random,limit=1,tag=set_spawn]
execute as @e[tag=spawn] at @s run tag @a[distance=..1] remove get_spawn
execute as @a[tag=playing] at @s run kill @e[tag=spawn,distance=..1]

execute as @r[tag=playing,tag=get_spawn] at @s run tp @s @e[tag=spawn,sort=random,limit=1,tag=set_spawn]
execute as @e[tag=spawn] at @s run tag @a[distance=..1] remove get_spawn
execute as @a[tag=playing] at @s run kill @e[tag=spawn,distance=..1]

execute as @r[tag=playing,tag=get_spawn] at @s run tp @s @e[tag=spawn,sort=random,limit=1,tag=set_spawn]
execute as @e[tag=spawn] at @s run tag @a[distance=..1] remove get_spawn
execute as @a[tag=playing] at @s run kill @e[tag=spawn,distance=..1]

execute as @r[tag=playing,tag=get_spawn] at @s run tp @s @e[tag=spawn,sort=random,limit=1,tag=set_spawn]
execute as @e[tag=spawn] at @s run tag @a[distance=..1] remove get_spawn
execute as @a[tag=playing] at @s run kill @e[tag=spawn,distance=..1]

execute as @r[tag=playing,tag=get_spawn] at @s run tp @s @e[tag=spawn,sort=random,limit=1,tag=set_spawn]
execute as @e[tag=spawn] at @s run tag @a[distance=..1] remove get_spawn
execute as @a[tag=playing] at @s run kill @e[tag=spawn,distance=..1]

execute as @r[tag=playing,tag=get_spawn] at @s run tp @s @e[tag=spawn,sort=random,limit=1,tag=set_spawn]
execute as @e[tag=spawn] at @s run tag @a[distance=..1] remove get_spawn
execute as @a[tag=playing] at @s run kill @e[tag=spawn,distance=..1]

execute as @r[tag=playing,tag=get_spawn] at @s run tp @s @e[tag=spawn,sort=random,limit=1,tag=set_spawn]
execute as @e[tag=spawn] at @s run tag @a[distance=..1] remove get_spawn
execute as @a[tag=playing] at @s run kill @e[tag=spawn,distance=..1]

execute as @r[tag=playing,tag=get_spawn] at @s run tp @s @e[tag=spawn,sort=random,limit=1,tag=set_spawn]
execute as @e[tag=spawn] at @s run tag @a[distance=..1] remove get_spawn
execute as @a[tag=playing] at @s run kill @e[tag=spawn,distance=..1]

execute as @r[tag=playing,tag=get_spawn] at @s run tp @s @e[tag=spawn,sort=random,limit=1,tag=set_spawn]
execute as @e[tag=spawn] at @s run tag @a[distance=..1] remove get_spawn
execute as @a[tag=playing] at @s run kill @e[tag=spawn,distance=..1]

execute as @r[tag=playing,tag=get_spawn] at @s run tp @s @e[tag=spawn,sort=random,limit=1,tag=set_spawn]
execute as @e[tag=spawn] at @s run tag @a[distance=..1] remove get_spawn
execute as @a[tag=playing] at @s run kill @e[tag=spawn,distance=..1]

execute if entity @a[tag=playing,tag=get_spawn] run function game:add_more_spawnpoints

execute as @e[tag=ice_capsule] at @s run fill ~ ~ ~ ~ ~ ~ air replace light_blue_stained_glass
execute as @e[tag=ice_capsule,tag=set_dirt_path] at @s run setblock ~ ~-1 ~ dirt_path
execute as @e[tag=ice_capsule,tag=set_water] at @s run setblock ~ ~ ~ water
kill @e[tag=die]
tag @e[tag=die_soon] add die
tag @e[tag=die_soon] remove die_soon
kill @e[tag=spawn]
execute if score $time chest_refill matches -600 as @e[tag=chest] at @s run fill ~ ~1 ~ ~ ~1 ~ structure_void replace trapped_chest
execute if score $time chest_refill matches -209 as @e[tag=chest] at @s run fill ~ ~1 ~ ~ ~1 ~ structure_void replace trapped_chest
execute if score $time chest_refill matches -209 as @e[tag=chest] at @s run fill ~ ~1 ~ ~ ~1 ~ structure_void replace air
execute if score $time chest_refill matches -300.. as @e[tag=chest] at @s run function game:chest_rotation
bossbar set minecraft:refill players @a[tag=playing]

scoreboard players operation $time chest_refill_t = $time chest_refill
kill @e[type=firework_rocket]
kill @e[type=item,nbt={Item:{id:"minecraft:saddle"}}]
kill @e[type=ender_dragon]
kill @e[type=trident]