scoreboard players set $map competitive 3
tellraw @a[tag=playing] [{"text":" - ","color":"light_purple"},{"text":"Foundation","color":"gray"},{"text":" has been selected","color":"white"},{"text":".","color":"gray"}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.5 1.25
function game:competitive/map/map_selection_over

