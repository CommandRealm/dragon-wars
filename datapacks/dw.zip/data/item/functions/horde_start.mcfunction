summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score @s horde_count run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation @s horde_count %= $mod horde_count
kill @e[type=area_effect_cloud,tag=random]
scoreboard players add @s horde_count 4
function item:horde_summon
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 2