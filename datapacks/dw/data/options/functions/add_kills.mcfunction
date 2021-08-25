setblock -6 68 47 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number set_kills 5
execute if score $number set_kills matches 35.. run scoreboard players set $number set_kills 5
execute if score $number set_kills matches ..0 run scoreboard players set $number set_kills 5

execute unless score $number set_kills matches 1 run setblock -6 68 47 jungle_wall_sign[facing=east]{Text1:'{"text":"Kills","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"to win:","color":"red","bold":true}',Text3:'[{"score":{"objective":"set_kills","name":"$number"},"color":"yellow"},{"text":" kills.","color":"yellow"}]',Text4:'[{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_kill"}}]'}

particle minecraft:cloud -7 69.5 47 0 0 0 0.05 10



kill @e[tag=display_kill]
summon armor_stand -7 68.625 47 {Tags:["display_kill","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:nether_quartz_ore",Count:1b}]}