scoreboard objectives remove playing
scoreboard objectives add playing dummy {"text":"P l a y i n g","color":"dark_purple"}
scoreboard objectives setdisplay sidebar playing
scoreboard players set $time alternate_20 1
scoreboard players set $time startup_timer 300