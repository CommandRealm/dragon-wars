execute as @e[type=egg] at @s run kill @e[tag=tracker,distance=..4]
execute as @e[tag=tracker] at @s run effect give @a[distance=..5,gamemode=adventure] slow_falling 30 10
kill @e[tag=tracker]
execute as @e[type=egg] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["tracker"]}
execute as @e[type=egg] at @s run particle cloud ~ ~ ~ 0.05 0.05 0.05 0.15 1
scoreboard players remove @e[type=egg] egg_time 1
execute as @e[type=egg,scores={egg_time=..-20}] at @s run effect give @a[distance=..3.5,gamemode=adventure] slow_falling 30 10
execute if score $time egg_time matches 1.. run scoreboard players remove $time egg_time 1
execute as @e[type=egg] at @s run playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 0.05 0