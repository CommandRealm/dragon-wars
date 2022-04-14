##Called to make a player enter the parkour

##Sound
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.35

##Parkour tag
tag @s add elytra_course
tag @s remove elytra_course_pad

##Resetting our dropped arrow
scoreboard players reset @s end_parkour

##Msg
tellraw @s [{"text":"╔╗","color":"dark_purple"},{"text":" You started the elytra course!","color":"light_purple"}]



# getting our new parkour id
scoreboard players add $id parkour_id 1
scoreboard players operation @s parkour_id = $id parkour_id

scoreboard players set @s rings_left 17

##Resetting our timer
scoreboard players set @s parkour_time 0

scoreboard players reset @s damage



title @s title [{"text":" "}]
title @s subtitle [{"text":"= ","color":"dark_purple"},{"text":"Deploy ","color":"yellow","italic":false},{"text":"your","color":"gray","italic":false},{"text":" elytra","color":"light_purple","italic":false},{"text":"!","color":"gray"},{"text":" =","color":"dark_purple"}]
