setblock -6 68 45 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number auto_ready 1
execute if score $number auto_ready matches 2.. run scoreboard players set $number auto_ready 0
execute if score $number auto_ready matches ..-1 run scoreboard players set $number auto_ready 1

execute if score $number auto_ready matches 0 run setblock -6 68 45 jungle_wall_sign[facing=east]{Text1:'{"text":"Auto-ready","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"after games:","color":"red","bold":true}',Text3:'[{"text":" [OFF]","color":"dark_red"}]',Text4:'[{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_auto_ready"}}]'}
execute if score $number auto_ready matches 1 run setblock -6 68 45 jungle_wall_sign[facing=east]{Text1:'{"text":"Auto-ready","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"after games:","color":"red","bold":true}',Text3:'[{"text":" [ON]","color":"green"}]',Text4:'[{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_auto_ready"}}]'}


particle minecraft:cloud -7 69.5 45 0 0 0 0.05 10



kill @e[tag=display_auto_ready]
execute if score $number auto_ready matches 0 run summon armor_stand -7 68.625 45 {Tags:["display_auto_ready","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}]}
execute if score $number auto_ready matches 1 run summon armor_stand -7 68.625 45 {Tags:["display_auto_ready","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}]}