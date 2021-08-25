setblock -1004 62 -48 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="TP Beam"] run tag @p add toggle
kill @e[type=armor_stand,name="TP Beam"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -3 56 26 {CustomName:'"TP Beam"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -1004 62 -48 jungle_wall_sign[facing=east]{Text1:'{"text":"Swapper","color":"red","bold":true}',Text2:'{"text":"Beam","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:tp_beam"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -1004 62 -48 jungle_wall_sign[facing=east]{Text1:'{"text":"Swapper","color":"red","bold":true}',Text2:'{"text":"Beam","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:tp_beam"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -1005 63 -48 {Item:{id:"minecraft:ender_eye",Count:1b},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_tp_beam"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_tp_beam]
tag @a remove toggle