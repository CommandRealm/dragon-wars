# called to see if we can go through this ring or if we already went through it.

tag @s add temporary_tag
execute as @e[type=area_effect_cloud,tag=ring_id_check,distance=..5] at @s if score @s parkour_id = @p[tag=temporary_tag] parkour_id run tag @p[tag=temporary_tag] remove temporary_tag

tag @s[tag=temporary_tag] add can_enter_ring
tag @s remove temporary_tag