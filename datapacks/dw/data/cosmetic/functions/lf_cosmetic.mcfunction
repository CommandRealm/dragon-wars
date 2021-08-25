scoreboard players set $mod rand_cosmetic 4
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand rand_cosmetic run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand rand_cosmetic %= $mod rand_cosmetic
kill @e[type=area_effect_cloud,tag=random]
execute if score $rand rand_cosmetic matches 0 run playsound minecraft:entity.wither.death master @s ~ ~ ~ 100000000 2
execute if score $rand rand_cosmetic matches 0 run function cosmetic:random
