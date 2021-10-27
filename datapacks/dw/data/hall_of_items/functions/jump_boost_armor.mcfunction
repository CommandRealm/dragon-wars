setblock -996 62 -54 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Leaping Armor"] run tag @p add toggle
kill @e[type=armor_stand,name="Leaping Armor"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -4 56 23 {CustomName:'"Leaping Armor"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -996 62 -54 jungle_wall_sign[facing=west]{Text1:'{"text":"Leaping","color":"green","bold":true}',Text2:'{"text":"Armor","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:jump_boost_armor"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -996 62 -54 jungle_wall_sign[facing=west]{Text1:'{"text":"Leaping","color":"green","bold":true}',Text2:'{"text":"Armor","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:jump_boost_armor"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -995 63 -54 {Item:{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Colors:[I;4977989]}}},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_jump_boost_armor","unusable","jump_boost_armor"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_jump_boost_armor]
tag @a remove toggle