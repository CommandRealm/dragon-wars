scoreboard objectives setdisplay sidebar
tellraw @a ["",{"text":"🗡 ","color":"light_purple","bold":true},{"text":"Insufficient amount of players to complete the game.","color":"red"}]
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 10000000 0
clear @a knowledge_book
function end:players