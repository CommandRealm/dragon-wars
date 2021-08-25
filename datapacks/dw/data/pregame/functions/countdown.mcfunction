scoreboard players remove $time startup_timer 1
scoreboard players operation $number startup_timer = $time startup_timer
scoreboard players operation $number startup_timer /= $20 number
scoreboard players add $number startup_timer 1 
title @a[tag=!building] title [{"score":{"objective":"startup_timer","name":"$number"},"color":"dark_purple"},{"text":" seconds"}]
title @a[tag=!building,scores={ready=1}] subtitle [{"text":"till the game begins . . .","color":"light_purple"},{"text":" ("},{"score":{"objective":"n_ready","name":"$number"}},{"text":"/"},{"score":{"objective":"n_on","name":"$number"}},{"text":")"}]
title @a[tag=!building,scores={ready=0}] subtitle [{"text":"to join the game . . .","color":"dark_red"}]
title @a[tag=!building] times 0 25 5
scoreboard players remove $time alternate_20 1
execute if score $time alternate_20 matches 0 run scoreboard players set $time alternate_20 20
execute if score $time alternate_20 matches 2 as @a[tag=!building] at @s run playsound minecraft:entity.ender_dragon.shoot master @s ~ ~ ~ 0.15 1
execute if score $time alternate_20 matches 20 as @a[tag=!building] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0
scoreboard players add @a[scores={ready=1..}] playing 0
execute if score $time startup_timer matches 0 if score $number team matches 2.. run function pregame:fix_teams
execute if score $time startup_timer matches 0 run function game:start
execute if score $time startup_timer matches 0 run scoreboard players set $time startup_timer -101
scoreboard players reset @a[scores={ready=0}] playing