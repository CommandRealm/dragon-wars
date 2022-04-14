execute as @a[tag=!building] at @s unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:knowledge_book"}]}] run function pregame:clear
execute as @a[scores={rc=1..}] at @s run function pregame:right_click
scoreboard players set @a[scores={ready=2}] ready 0
scoreboard players set $number n_on 0
execute as @a at @s run scoreboard players add $number n_on 1
scoreboard players set $number n_ready 0
execute as @a[scores={ready=1}] at @s run scoreboard players add $number n_ready 1
execute if entity @a[tag=fakeplayer] run scoreboard players add $number n_ready 1
execute unless score $number n_ready matches 2.. if score $time startup_timer matches 0.. run scoreboard objectives setdisplay sidebar
execute unless score $number n_ready matches 2.. if score $time startup_timer matches 0.. run scoreboard players set @a crouch2 0
execute unless score $number n_ready matches 2.. run scoreboard players set $time startup_timer -101
execute unless score $number n_ready matches 2.. run data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomName set value '[{"text":"- ","color":"gray"},{"text":"🗡","color":"light_purple","bold":true},{"text":" Start ","color":"dark_purple"},{"text":"🗡","color":"light_purple","bold":true},{"text":" -","color":"gray}]'
# execute if score $time startup_timer matches -101 if score $number n_ready matches 2.. run function pregame:start_countdown
execute if score $time startup_timer matches 1.. run function pregame:countdown
title @a[scores={ready=0},gamemode=adventure,tag=!elytra_course] actionbar [{"text":"","color":"light_purple"},{"text":"You will spectate.","italic":false,"color":"red"},{"text":" (","color":"dark_purple"},{"score":{"objective":"n_ready","name":"$number"},"color":"light_purple"},{"text":"/","color":"gray"},{"score":{"objective":"n_on","name":"$number"},"color":"light_purple"},{"text":")","color":"dark_purple"}]
title @a[scores={ready=1},gamemode=adventure,tag=!elytra_course] actionbar [{"text":"","color":"light_purple"},{"text":"You will play.","bold":false,"color":"light_purple"},{"text":" (","color":"dark_purple"},{"score":{"objective":"n_ready","name":"$number"},"color":"light_purple"},{"text":"/","color":"gray"},{"score":{"objective":"n_on","name":"$number"},"color":"light_purple"},{"text":")","color":"dark_purple"}]
execute if score $number team matches 2.. as @a[gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:written_book",Count:1b}]}] run function lobby:get_book

execute if score $button pregame matches 1.. run scoreboard players remove $button pregame 1
execute if score $button pregame matches 0 run function pregame:replace_button

# press button
execute if block 0 68 7 stone_button[powered=true] run function pregame:press_button