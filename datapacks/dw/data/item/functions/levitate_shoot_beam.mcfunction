stopsound @a * minecraft:ambient.underwater.loop
summon area_effect_cloud ^ ^ ^0.5 {Duration:70,Tags:["laser_beam","tp_facing_player","die"]}
execute as @e[tag=tp_facing_player,type=area_effect_cloud] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure]
execute as @e[tag=tp_facing_player,type=area_effect_cloud] at @s run tp @s ~ ~1.75 ~
tag @e[tag=tp_facing_player,type=area_effect_cloud] remove tp_facing_player
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 2
scoreboard players reset @s[gamemode=!adventure] l_blast_timer