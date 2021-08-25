summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand random_map run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand random_map %= $mod random_map
kill @e[type=area_effect_cloud,tag=random]
scoreboard players operation $map map = $rand random_map