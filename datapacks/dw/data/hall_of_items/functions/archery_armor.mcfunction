setblock -1004 62 -24 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Chain Armor"] run tag @p add toggle
kill @e[type=armor_stand,name="Chain Armor"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand 0 56 25 {CustomName:'"Chain Armor"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -1004 62 -24 jungle_wall_sign[facing=east]{Text1:'{"text":"Archery Prot","color":"dark_gray","bold":true}',Text2:'{"text":"Armor","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:archery_armor"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -1004 62 -24 jungle_wall_sign[facing=east]{Text1:'{"text":"Archery Prot","color":"dark_gray","bold":true}',Text2:'{"text":"Armor","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:archery_armor"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -1005 63 -24 {Item:{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Colors:[I;4934475]}}},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_archery"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_archery]
tag @a remove toggle