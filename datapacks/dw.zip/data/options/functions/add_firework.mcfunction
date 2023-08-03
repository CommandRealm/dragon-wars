# if we're on comp reset the firework amount since we're going off of comp mode


setblock 6 68 47 air
playsound minecraft:ui.button.click master @s
scoreboard players add $time firework_time 1
execute if score $time firework_time matches 3.. run scoreboard players set $time firework_time 0
execute if score $time firework_time matches ..-1 run scoreboard players set $time firework_time 2

execute if score $time firework_time matches 0 run setblock 6 68 47 cherry_wall_sign[facing=west]{front_text:{messages:['{"text":"Firework","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"spawn rate:","color":"blue","bold":true}', '{"text":"Slow","color":"yellow"}', '{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 if score $number mode matches ..2 run function options:click_firework"}}']}}
execute if score $time firework_time matches 1 run setblock 6 68 47 cherry_wall_sign[facing=west]{front_text:{messages:['{"text":"Firework","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"spawn rate:","color":"blue","bold":true}', '{"text":"Normal","color":"yellow"}', '{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 if score $number mode matches ..2 run function options:click_firework"}}']}}
execute if score $time firework_time matches 2 run setblock 6 68 47 cherry_wall_sign[facing=west]{front_text:{messages:['{"text":"Firework","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"spawn rate:","color":"blue","bold":true}', '{"text":"Fast","color":"yellow"}', '{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 if score $number mode matches ..2 run function options:click_firework"}}']}}



particle minecraft:cloud 7 69.5 47 0 0 0 0.05 10



kill @e[tag=display_firework]
execute if score $time firework_time matches 0 run summon armor_stand 7 68.625 47 {Tags:["display_firework","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:soul_sand",Count:1b}]}
execute if score $time firework_time matches 1 run summon armor_stand 7 68.625 47 {Tags:["display_firework","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:grass_block",Count:1b}]}
execute if score $time firework_time matches 2 run summon armor_stand 7 68.625 47 {Tags:["display_firework","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}]}