scoreboard players set $time startup_timer -1
scoreboard objectives remove playing
data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomName set value '[{"text":"- ","color":"gray"},{"text":"🗡","color":"light_purple","bold":true},{"text":" Start ","color":"dark_purple"},{"text":"🗡","color":"light_purple","bold":true},{"text":" -","color":"gray"}]'
