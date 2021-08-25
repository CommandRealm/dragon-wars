setblock -996 62 -40 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Ice Mine"] run tag @p add toggle
kill @e[type=armor_stand,name="Ice Mine"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -3 56 25 {CustomName:'"Ice Mine"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -996 62 -40 jungle_wall_sign[facing=west]{Text1:'{"text":" ","color":"yellow","bold":true}',Text2:'{"text":"Ice Mine","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:ice_mine"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -996 62 -40 jungle_wall_sign[facing=west]{Text1:'{"text":" ","color":"yellow","bold":true}',Text2:'{"text":"Ice Mine","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:ice_mine"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -995 63 -40 {Item:{id:"minecraft:ice",Count:3b},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_ice_mine","no_activate"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_ice_mine]
tag @a remove toggle