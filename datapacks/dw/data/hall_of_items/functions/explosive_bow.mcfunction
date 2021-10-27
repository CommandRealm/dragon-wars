setblock -1004 62 -58 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Explosive Bow"] run tag @p add toggle
kill @e[type=armor_stand,name="Explosive Bow"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -4 56 23 {CustomName:'"Explosive Bow"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -1004 62 -58 jungle_wall_sign[facing=east]{Text1:'{"text":"Explosive","color":"red","bold":true}',Text2:'{"text":"Bow","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:explosive_bow"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -1004 62 -58 jungle_wall_sign[facing=east]{Text1:'{"text":"Explosive","color":"red","bold":true}',Text2:'{"text":"Bow","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:explosive_bow"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -1005 63 -58 {Item:{id:"minecraft:bow",Count:1b,tag:{explosive_bow:1}},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_explosive_bow","unusable"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_explosive_bow]
tag @a remove toggle