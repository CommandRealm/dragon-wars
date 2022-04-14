scoreboard objectives setdisplay sidebar
tellraw @a [{"text":"The game lasted too long and has ","color":"red"},{"text":"ended","color":"dark_red"},{"text":".","color":"red"}]
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 10000000 0
function end:players