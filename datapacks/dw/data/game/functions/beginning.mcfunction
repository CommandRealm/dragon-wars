scoreboard players reset @a[tag=playing] l_blast_timer
execute if score $time timer matches 9960 run title @a[tag=playing] times 0 20 5
execute if score $time timer matches 9960 run title @a[tag=playing] title {"text":"- = - 3 - = -","color":"dark_purple","bold":true}
execute if score $time timer matches 9960 as @a[tag=playing] at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.5 0.5
execute if score $time timer matches 9940 run title @a[tag=playing] title {"text":"-=- 2 -=-","color":"dark_purple","bold":true}
execute if score $time timer matches 9940 as @a[tag=playing] at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.5 0.5
execute if score $time timer matches 9920 run title @a[tag=playing] title {"text":"- 1 -","color":"dark_purple","bold":true}
execute if score $time timer matches 9920 as @a[tag=playing] at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.5 0.5
execute if score $time timer matches 9900 run title @a[tag=playing] title {"text":"Fight!","color":"light_purple","bold":true}
execute if score $time timer matches 9900..9960 run title @a[tag=playing] subtitle {"text":"Get ready to deploy your elytra!","color":"yellow","italic":true}
execute if score $time timer matches 9900 run function game:beginning_0



title @a[tag=playing] actionbar [{"text":"Tip: ","color":"yellow"},{"selector":"@e[tag=tip]"}]
