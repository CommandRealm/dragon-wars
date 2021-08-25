scoreboard objectives setdisplay sidebar
tellraw @a {"text":"Insufficient amount of players to complete the game.","color":"red"}
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 10000000 0
function end:players