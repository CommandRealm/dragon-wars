setblock 0 68 48 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number mode 1
execute if score $number mode matches 3.. run scoreboard players set $number mode 0
execute if score $number mode matches ..-1 run scoreboard players set $number mode 2

execute if score $number mode matches 0 run setblock 0 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mode:","color":"dark_purple","bold":true}',Text3:'{"text":"Rounds","color":"yellow"}',Text4:'[{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_mode"}}]'}
execute if score $number mode matches 1 run setblock 0 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mode:","color":"dark_purple","bold":true}',Text3:'{"text":"Kills","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_mode"}}'}
execute if score $number mode matches 2 run setblock 0 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mode:","color":"dark_purple","bold":true}',Text3:'{"text":"Treasure","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_mode"}}'}

execute if score $number mode matches 0 run function options:round_settings
execute if score $number mode matches 1 run function options:kill_settings
execute if score $number mode matches 2 run function options:treasure_settings



particle minecraft:cloud 0 69.5 49 0 0 0 0.05 10



kill @e[tag=display_mode]
execute if score $number mode matches 0 run summon armor_stand 0 68.625 49 {Tags:["display_mode","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:sea_lantern",Count:1b}]}
execute if score $number mode matches 1 run summon armor_stand 0 68.625 49 {Tags:["display_mode","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
execute if score $number mode matches 2 run summon armor_stand 0 68.625 49 {Tags:["display_mode","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_block",Count:1b}]}