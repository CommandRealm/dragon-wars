setblock 6 68 43 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number set_time 1
execute if score $number set_time matches 4.. run scoreboard players set $number set_time 0
execute if score $number set_time matches ..-1 run scoreboard players set $number set_time 3

execute if score $number set_time matches 0 run setblock 6 68 43 jungle_wall_sign[facing=west]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Time of Day:","color":"blue","bold":true}',Text3:'{"text":"Day","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_time"}}'}
execute if score $number set_time matches 1 run setblock 6 68 43 jungle_wall_sign[facing=west]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Time of Day:","color":"blue","bold":true}',Text3:'{"text":"Dusk","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_time"}}'}
execute if score $number set_time matches 2 run setblock 6 68 43 jungle_wall_sign[facing=west]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Time of Day:","color":"blue","bold":true}',Text3:'{"text":"Twilight","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_time"}}'}
execute if score $number set_time matches 3 run setblock 6 68 43 jungle_wall_sign[facing=west]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Time of Day:","color":"blue","bold":true}',Text3:'{"text":"Random","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_time"}}'}

execute if score $number set_time matches 0 run time set 6000
execute if score $number set_time matches 1 run time set 13000
execute if score $number set_time matches 2 run time set 19000
execute if score $number set_time matches 3 at @r run function options:random_time

particle minecraft:cloud 7 69.5 43 0 0 0 0.05 10



kill @e[tag=display_time]
execute if score $number set_time matches 0 run summon armor_stand 7 68.625 43 {Tags:["display_time","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}]}
execute if score $number set_time matches 1 run summon armor_stand 7 68.625 43 {Tags:["display_time","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:cyan_concrete",Count:1b}]}
execute if score $number set_time matches 2 run summon armor_stand 7 68.625 43 {Tags:["display_time","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b}]}
execute if score $number set_time matches 3 run summon armor_stand 7 68.625 43 {Tags:["display_time","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b,tag:{Enchantments:[{id:"easter_egg",lvl:1}]}}]}