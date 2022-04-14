summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand set_time run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand set_time %= $mod set_time
kill @e[type=area_effect_cloud,tag=random]
execute if score $rand set_time matches 0 run time set 6000
execute if score $rand set_time matches 1 run time set 13000
execute if score $rand set_time matches 2 run time set 19000