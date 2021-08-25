setblock -6 68 47 air
playsound minecraft:ui.button.click master @s
scoreboard players add $time treasure_spawn 300
execute if score $time treasure_spawn matches 1900.. run scoreboard players set $time treasure_spawn 300
execute if score $time treasure_spawn matches ..0 run scoreboard players set $time treasure_spawn 1800

execute if score $time treasure_spawn matches 300 run setblock -6 68 47 jungle_wall_sign[facing=east]{Text1:'{"text":"Treasure","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"spawn time:","color":"red","bold":true}',Text3:'[{"text":"15 seconds.","color":"yellow"}]',Text4:'[{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_treasure"}}]'}
execute if score $time treasure_spawn matches 600 run setblock -6 68 47 jungle_wall_sign[facing=east]{Text1:'{"text":"Treasure","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"spawn time:","color":"red","bold":true}',Text3:'[{"text":"30 seconds.","color":"yellow"}]',Text4:'[{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_treasure"}}]'}
execute if score $time treasure_spawn matches 900 run setblock -6 68 47 jungle_wall_sign[facing=east]{Text1:'{"text":"Treasure","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"spawn time:","color":"red","bold":true}',Text3:'[{"text":"45 seconds.","color":"yellow"}]',Text4:'[{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_treasure"}}]'}

execute if score $time treasure_spawn matches 1200 run setblock -6 68 47 jungle_wall_sign[facing=east]{Text1:'{"text":"Treasure","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"spawn time:","color":"red","bold":true}',Text3:'[{"text":"1 minute.","color":"yellow"}]',Text4:'[{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_treasure"}}]'}

execute if score $time treasure_spawn matches 1500 run setblock -6 68 47 jungle_wall_sign[facing=east]{Text1:'{"text":"Treasure","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"spawn time:","color":"red","bold":true}',Text3:'[{"text":"min\' & 15 seconds.","color":"yellow"}]',Text4:'[{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_treasure"}}]'}

execute if score $time treasure_spawn matches 1800 run setblock -6 68 47 jungle_wall_sign[facing=east]{Text1:'{"text":"Treasure","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"spawn time:","color":"red","bold":true}',Text3:'[{"text":"min\' & 30 seconds.","color":"yellow"}]',Text4:'[{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_treasure"}}]'}



particle minecraft:cloud -7 69.5 47 0 0 0 0.05 10



kill @e[tag=display_treasure]
execute if score $time treasure_spawn matches 300 run summon armor_stand -7 68.625 47 {Tags:["display_treasure","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute if score $time treasure_spawn matches 600 run summon armor_stand -7 68.625 47 {Tags:["display_treasure","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b}]}
execute if score $time treasure_spawn matches 900 run summon armor_stand -7 68.625 47 {Tags:["display_treasure","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:gold_block",Count:1b}]}
execute if score $time treasure_spawn matches 1200 run summon armor_stand -7 68.625 47 {Tags:["display_treasure","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lapis_block",Count:1b}]}
execute if score $time treasure_spawn matches 1500 run summon armor_stand -7 68.625 47 {Tags:["display_treasure","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:emerald_block",Count:1b}]}
execute if score $time treasure_spawn matches 1800 run summon armor_stand -7 68.625 47 {Tags:["display_treasure","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_block",Count:1b}]}