scoreboard objectives remove playing
scoreboard objectives add playing dummy [{"text":"- ","color":"gray"},{"text":"🗡","color":"light_purple","bold":true},{"text":" Playing ","color":"dark_purple"},{"text":"🗡","color":"light_purple","bold":true},{"text":" -","color":"gray"}]
scoreboard objectives setdisplay sidebar playing
scoreboard players set $time alternate_20 1
scoreboard players set $time startup_timer 100

data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomName set value '[{"text":"- ","color":"gray"},{"text":"🗡","color":"light_purple","bold":true},{"text":" Cancel ","color":"red"},{"text":"🗡","color":"light_purple","bold":true},{"text":" -","color":"gray"}]'