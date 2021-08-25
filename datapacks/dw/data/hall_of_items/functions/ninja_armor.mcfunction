setblock -996 62 -22 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Ninja Outfit"] run tag @p add toggle
kill @e[type=armor_stand,name="Ninja Outfit"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand 0 56 27 {CustomName:'"Ninja Outfit"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -996 62 -22 jungle_wall_sign[facing=west]{Text1:'{"text":"Ninja","color":"dark_aqua","bold":true}',Text2:'{"text":"Armor","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:ninja_armor"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -996 62 -22 jungle_wall_sign[facing=west]{Text1:'{"text":"Ninja","color":"dark_aqua","bold":true}',Text2:'{"text":"Armor","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:ninja_armor"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -995 63 -22 {Item:{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Colors:[I;5479591]}}},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_ninja"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_ninja]
tag @a remove toggle