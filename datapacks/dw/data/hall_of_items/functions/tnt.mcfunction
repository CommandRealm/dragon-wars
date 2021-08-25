setblock -996 62 -38 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="TNT"] run tag @p add toggle
kill @e[type=armor_stand,name="TNT"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -3 56 24 {CustomName:'"TNT"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -996 62 -38 jungle_wall_sign[facing=west]{Text1:'{"text":" ","color":"yellow","bold":true}',Text2:'{"text":"TNT","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:tnt"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -996 62 -38 jungle_wall_sign[facing=west]{Text1:'{"text":" ","color":"yellow","bold":true}',Text2:'{"text":"TNT","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:tnt"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -995 63 -38 {Item:{id:"minecraft:tnt",Count:1b},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_tnt"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_tnt]
tag @a remove toggle