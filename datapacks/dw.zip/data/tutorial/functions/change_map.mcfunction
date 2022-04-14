# called to change the map
scoreboard players add $map_set tutorial 1
execute if score $map_set tutorial matches 7.. run scoreboard players set $map_set tutorial 0
execute as @e[type=glow_item_frame,tag=tutorial_map_display] at @s run scoreboard players operation @s calculate = @s tutorial
scoreboard players operation $map_set calculate = $map_set tutorial
scoreboard players operation $map_set calculate *= $15 number
execute as @e[type=glow_item_frame,tag=tutorial_map_display] at @s run scoreboard players operation @s calculate += $map_set calculate
execute as @e[type=glow_item_frame,tag=tutorial_map_display] at @s store result entity @s Item.tag.map int 1 run scoreboard players get @s calculate

scoreboard players set $time tutorial 20