scoreboard players set $map competitive 1
tellraw @a[tag=playing] [{"text":" - ","color":"light_purple"},{"text":"Desolate","color":"#fff6d1"},{"text":" has been selected","color":"white"},{"text":".","color":"gray"}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.5 1.25
function game:competitive/map/map_selection_over