setblock -996 62 -26 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Spartan Armor"] run tag @p add toggle
kill @e[type=armor_stand,name="Spartan Armor"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -1 56 24 {CustomName:'"Spartan Armor"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -996 62 -26 jungle_wall_sign[facing=west]{Text1:'{"text":"Cactus","color":"dark_green","bold":true}',Text2:'{"text":"Armor","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:cactus_armor"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -996 62 -26 jungle_wall_sign[facing=west]{Text1:'{"text":"Cactus","color":"dark_green","bold":true}',Text2:'{"text":"Armor","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:cactus_armor"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -995 63 -26 {Item:{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Colors:[I;422918]}}},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_cactus"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_cactus]
tag @a remove toggle