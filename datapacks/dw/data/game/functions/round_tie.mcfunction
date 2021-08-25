execute if score $number team matches 2.. as @a[tag=playing] at @s run function game:join_team
scoreboard players set $time cooldown 100
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100000 0.5
title @a[tag=playing] title {"text":"Draw!","color":"red"}
tellraw @a[tag=playing] {"text":"The round ended in a tie.","color":"red"}
function game:round_restart_c