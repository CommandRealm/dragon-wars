setblock -6 68 47 air
playsound minecraft:ui.button.click master @s
scoreboard players add $round round_criteria 1
execute if score $round round_criteria matches 6.. run scoreboard players set $round round_criteria 1
execute if score $round round_criteria matches ..0 run scoreboard players set $round round_criteria 5

execute unless score $round round_criteria matches 1 run setblock -6 68 47 jungle_wall_sign[facing=east]{Text1:'{"text":"Rounds","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"to win:","color":"red","bold":true}',Text3:'[{"score":{"objective":"round_criteria","name":"$round"},"color":"yellow"},{"text":" rounds.","color":"yellow"}]',Text4:'[{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_round"}}]'}
execute if score $round round_criteria matches 1 run setblock -6 68 47 jungle_wall_sign[facing=east]{Text1:'{"text":"Rounds","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"to win:","color":"red","bold":true}',Text3:'[{"score":{"objective":"round_criteria","name":"$round"},"color":"yellow"},{"text":" round.","color":"yellow"}]',Text4:'[{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_round"}}]'}

particle minecraft:cloud -7 69.5 47 0 0 0 0.05 10



kill @e[tag=display_round]
summon armor_stand -7 68.625 47 {Tags:["display_round","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:purple_terracotta",Count:1b}]}