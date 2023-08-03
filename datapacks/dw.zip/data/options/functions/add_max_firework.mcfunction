# if we're on comp reset the max_firework amount since we're going off of comp mode


setblock 6 68 49 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number max_fireworks 1
execute if score $number max_fireworks matches 12.. run scoreboard players set $number max_fireworks 1
execute if score $number max_fireworks matches ..0 run scoreboard players set $number max_fireworks 11

execute unless score $number max_fireworks matches 11 run setblock 6 68 49 cherry_wall_sign[facing=west]{front_text:{messages:['{"text":"Maximum","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"fireworks:","color":"blue","bold":true}', '{"score":{"objective":"max_fireworks","name":"$number"},"color":"yellow"}', '{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 if score $number mode matches ..2 run function options:click_max_firework"}}']}}
execute if score $number max_fireworks matches 11 run setblock 6 68 49 cherry_wall_sign[facing=west]{front_text:{messages:['{"text":"Maximum","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"fireworks:","color":"blue","bold":true}', '{"text":"Unlimited","color":"yellow"}', '{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 if score $number mode matches ..2 run function options:click_max_firework"}}']}}



particle minecraft:cloud 7 69.5 49 0 0 0 0.05 10

# to update fireworks
advancement grant @a[gamemode=adventure] only game:inventory_updated

kill @e[tag=display_max_firework]
execute if score $number max_fireworks matches 1 run summon armor_stand 7 68.625 49 {Tags:["display_max_firework","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}]}
execute if score $number max_fireworks matches 2 run summon armor_stand 7 68.625 49 {Tags:["display_max_firework","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:copper_ore",Count:1b}]}
execute if score $number max_fireworks matches 3 run summon armor_stand 7 68.625 49 {Tags:["display_max_firework","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:copper_block",Count:1b}]}
execute if score $number max_fireworks matches 4 run summon armor_stand 7 68.625 49 {Tags:["display_max_firework","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:raw_copper_block",Count:1b}]}
execute if score $number max_fireworks matches 5 run summon armor_stand 7 68.625 49 {Tags:["display_max_firework","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_ore",Count:1b}]}
execute if score $number max_fireworks matches 6 run summon armor_stand 7 68.625 49 {Tags:["display_max_firework","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b}]}
execute if score $number max_fireworks matches 7 run summon armor_stand 7 68.625 49 {Tags:["display_max_firework","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:raw_iron_block",Count:1b}]}
execute if score $number max_fireworks matches 8 run summon armor_stand 7 68.625 49 {Tags:["display_max_firework","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:gold_ore",Count:1b}]}
execute if score $number max_fireworks matches 9 run summon armor_stand 7 68.625 49 {Tags:["display_max_firework","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:gold_block",Count:1b}]}
execute if score $number max_fireworks matches 10 run summon armor_stand 7 68.625 49 {Tags:["display_max_firework","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:raw_gold_block",Count:1b}]}
execute if score $number max_fireworks matches 11 run summon armor_stand 7 68.625 49 {Tags:["display_max_firework","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_block",Count:1b}]}
