execute if entity @e[distance=..0.75,tag=item_model] run tag @s add stop_raycast
execute if entity @e[distance=..0.75,tag=item_model] run function hall_of_items:lf_crouch
execute if entity @s[distance=..7,tag=!stop_raycast] positioned ^ ^ ^1 run function hall_of_items:raycast
tag @a remove stop_raycast