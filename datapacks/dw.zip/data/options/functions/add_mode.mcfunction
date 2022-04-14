
# if we're on comp reset the teams amount since we're going off of comp mode
execute if score $number mode matches 3 run scoreboard players operation $number team = $save team
execute if score $number mode matches 3 run function options:add_team

setblock 0 68 48 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number mode 1
execute if score $number mode matches 4.. run scoreboard players set $number mode 0
execute if score $number mode matches ..-1 run scoreboard players set $number mode 3



execute if score $number mode matches 0 run setblock 0 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mode:","color":"dark_purple","bold":true}',Text3:'{"text":"Rounds","color":"yellow"}',Text4:'[{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_mode"}}]'}
execute if score $number mode matches 1 run setblock 0 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mode:","color":"dark_purple","bold":true}',Text3:'{"text":"Kills","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_mode"}}'}
execute if score $number mode matches 2 run setblock 0 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mode:","color":"dark_purple","bold":true}',Text3:'{"text":"Treasure","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_mode"}}'}
execute if score $number mode matches 3 run setblock 0 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mode:","color":"dark_purple","bold":true}',Text3:'{"text":"Competitive","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_mode"}}'}
fill -6 70 47 -7 68 47 air
kill @e[tag=display_round]
kill @e[tag=display_kill]
kill @e[tag=display_treasure]
kill @e[type=item,x=-7,y=66,z=46,distance=..10,nbt={Item:{id:"minecraft:jungle_sign"}}] 
kill @e[type=item,x=-7,y=66,z=46,distance=..10,nbt={Item:{id:"minecraft:jungle_pressure_plate"}}]

# if we're on comp save the teams amount
execute if score $number mode matches 3 run scoreboard players operation $save team = $number team
execute if score $number mode matches 3 run scoreboard players remove $save team 1

execute if score $number mode matches 0 run function options:round_settings
execute if score $number mode matches 1 run function options:kill_settings
execute if score $number mode matches 2 run function options:treasure_settings
execute if score $number mode matches 3 run function options:competitive_settings


particle minecraft:cloud 0 69.5 49 0 0 0 0.05 10



kill @e[tag=display_mode]
execute if score $number mode matches 0 run summon armor_stand 0 68.625 49 {Tags:["display_mode","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:sea_lantern",Count:1b}]}
execute if score $number mode matches 1 run summon armor_stand 0 68.625 49 {Tags:["display_mode","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
execute if score $number mode matches 2 run summon armor_stand 0 68.625 49 {Tags:["display_mode","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_block",Count:1b}]}
execute if score $number mode matches 3 run summon armor_stand 0 68.625 49 {Tags:["display_mode","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:purple_glazed_terracotta",Count:1b}]}

# clearing subtitle because of comp warning 
title @a[x=0,y=68,z=45,distance=..10] subtitle ""


