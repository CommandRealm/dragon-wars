##Called to convert our time into seconds and milliseconds.

##Minutes
scoreboard players operation $calculate calculate = @s parkour_time
scoreboard players operation $calculate calculate /= $minute number
scoreboard players operation $minute calculate = $calculate calculate

##Seconds
scoreboard players operation $calculate calculate = @s parkour_time
scoreboard players operation $calculate calculate /= $20 number
scoreboard players operation $second calculate = $calculate calculate

execute if score $minute calculate matches 1.. run function lobby:parkour/subtract_minute

##Milliseconds
scoreboard players operation $calculate calculate = @s parkour_time
scoreboard players operation $calculate calculate %= $20 number
scoreboard players operation $calculate calculate /= $2 number
scoreboard players operation $millisecond calculate = $calculate calculate


##Action bar
execute if score $minute calculate matches 0 run title @s[tag=elytra_course] actionbar [{"text":"╔╗ ","color":"dark_purple"},{"text":"Time:","color":"light_purple","underlined": true},{"text":" "},{"score":{"objective":"calculate","name":"$second"},"color":"yellow"},{"text":".","color":"gold"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow"}]
execute if score $minute calculate matches 1.. if entity @s[tag=elytra_course] run function lobby:parkour/display_minute_action_bar
