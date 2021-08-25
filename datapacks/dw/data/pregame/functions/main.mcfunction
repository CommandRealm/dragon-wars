execute as @a[tag=!building] at @s unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:knowledge_book"}]}] run function pregame:clear
execute as @a[scores={rc=1..}] at @s run function pregame:right_click
scoreboard players set @a[scores={ready=2}] ready 0
scoreboard players set $number n_on 0
execute as @a at @s run scoreboard players add $number n_on 1
scoreboard players set $number n_ready 0
execute as @a[scores={ready=1}] at @s run scoreboard players add $number n_ready 1
execute if entity @a[tag=fakeplayer] run scoreboard players add $number n_ready 1
execute if score $number n_ready matches 1 run title @a[scores={ready=1}] title {"text":" ","color":"light_purple"}
execute if score $number n_ready matches 1 run title @a[scores={ready=1}] subtitle {"text":"Waiting for another player . . .","color":"light_purple"}
execute unless score $number n_ready matches 2.. if score $time startup_timer matches 0.. run scoreboard objectives setdisplay sidebar
execute unless score $number n_ready matches 2.. if score $time startup_timer matches 0.. run scoreboard players set @a crouch2 0
execute unless score $number n_ready matches 2.. run scoreboard players set $time startup_timer -101
execute if score $time startup_timer matches -101 if score $number n_ready matches 2.. run function pregame:start_countdown
execute if score $time startup_timer matches 1.. run function pregame:countdown
title @a[scores={ready=0},gamemode=adventure] actionbar {"text":"You will spectate.","italic":true}
title @a[scores={ready=1},gamemode=adventure] actionbar {"text":"You will play!","bold":true,"color":"light_purple"}
execute if score $number team matches 2.. as @a[gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:written_book",Count:1b}]}] run function lobby:get_book