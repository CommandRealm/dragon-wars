setblock 2 68 48 air
playsound minecraft:ui.button.click master @s
scoreboard players add $map map_select 1
execute if score $map map_select matches ..-2 run scoreboard players set $map map_select 12
execute if score $map map_select matches 13.. run scoreboard players set $map map_select -1

execute if score $map map_select matches -1 run setblock 2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Map:","color":"dark_purple","bold":true}',Text3:'{"text":"Random","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_map"}}'}
execute if score $map map_select matches 0 run setblock 2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Map:","color":"dark_purple","bold":true}',Text3:'{"text":"Aftermath","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_map"}}'}
execute if score $map map_select matches 1 run setblock 2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Map:","color":"dark_purple","bold":true}',Text3:'{"text":"Clockwork","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_map"}}'}
execute if score $map map_select matches 2 run setblock 2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Map:","color":"dark_purple","bold":true}',Text3:'{"text":"Sleet","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_map"}}'}
execute if score $map map_select matches 3 run setblock 2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Map:","color":"dark_purple","bold":true}',Text3:'{"text":"Desolate","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_map"}}'}
execute if score $map map_select matches 4 run setblock 2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Map:","color":"dark_purple","bold":true}',Text3:'{"text":"Graviton","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_map"}}'}
execute if score $map map_select matches 5 run setblock 2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Map:","color":"dark_purple","bold":true}',Text3:'{"text":"Immemorial","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_map"}}'}
execute if score $map map_select matches 6 run setblock 2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Map:","color":"dark_purple","bold":true}',Text3:'{"text":"Mycology","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_map"}}'}
execute if score $map map_select matches 7 run setblock 2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Map:","color":"dark_purple","bold":true}',Text3:'{"text":"Skyline","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_map"}}'}
execute if score $map map_select matches 8 run setblock 2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Map:","color":"dark_purple","bold":true}',Text3:'{"text":"Dynasty","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_map"}}'}
execute if score $map map_select matches 9 run setblock 2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Map:","color":"dark_purple","bold":true}',Text3:'{"text":"Aquatic","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_map"}}'}
execute if score $map map_select matches 10 run setblock 2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Map:","color":"dark_purple","bold":true}',Text3:'{"text":"Helios","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_map"}}'}
execute if score $map map_select matches 11 run setblock 2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Map:","color":"dark_purple","bold":true}',Text3:'{"text":"Scorched","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_map"}}'}
execute if score $map map_select matches 12 run setblock 2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Map:","color":"dark_purple","bold":true}',Text3:'{"text":"Extraterrestrial","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_map"}}'}


particle minecraft:cloud 2 69.5 49 0 0 0 0.05 10



kill @e[tag=display_map]
execute if score $map map_select matches -1 run summon armor_stand 2 68.625 49 {Tags:["display_map","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b}]}
execute if score $map map_select matches 0 run summon armor_stand 2 68.625 49 {Tags:["display_map","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:grass_path",Count:1b}]}
execute if score $map map_select matches 1 run summon armor_stand 2 68.625 49 {Tags:["display_map","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:gold_block",Count:1b}]}
execute if score $map map_select matches 2 run summon armor_stand 2 68.625 49 {Tags:["display_map","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}]}
execute if score $map map_select matches 3 run summon armor_stand 2 68.625 49 {Tags:["display_map","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:sandstone",Count:1b}]}
execute if score $map map_select matches 4 run summon armor_stand 2 68.625 49 {Tags:["display_map","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_stained_glass",Count:1b}]}
execute if score $map map_select matches 5 run summon armor_stand 2 68.625 49 {Tags:["display_map","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:end_stone_bricks",Count:1b}]}
execute if score $map map_select matches 6 run summon armor_stand 2 68.625 49 {Tags:["display_map","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:mycelium",Count:1b}]}
execute if score $map map_select matches 7 run summon armor_stand 2 68.625 49 {Tags:["display_map","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:smooth_quartz",Count:1b}]}
execute if score $map map_select matches 8 run summon armor_stand 2 68.625 49 {Tags:["display_map","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_terracotta",Count:1b}]}
execute if score $map map_select matches 9 run summon armor_stand 2 68.625 49 {Tags:["display_map","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:prismarine",Count:1b}]}
execute if score $map map_select matches 10 run summon armor_stand 2 68.625 49 {Tags:["display_map","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_stained_glass",Count:1b}]}
execute if score $map map_select matches 11 run summon armor_stand 2 68.625 49 {Tags:["display_map","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:netherrack",Count:1b}]}
execute if score $map map_select matches 12 run summon armor_stand 2 68.625 49 {Tags:["display_map","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:slime_block",Count:1b}]}