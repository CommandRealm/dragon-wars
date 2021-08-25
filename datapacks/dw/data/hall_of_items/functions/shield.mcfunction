setblock -996 62 -46 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Shield"] run tag @p add toggle
kill @e[type=armor_stand,name="Shield"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -3 56 26 {CustomName:'"Shield"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -996 62 -46 jungle_wall_sign[facing=west]{Text1:'{"text":"","color":"gold","bold":true}',Text2:'{"text":"Shield","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:shield"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -996 62 -46 jungle_wall_sign[facing=west]{Text1:'{"text":"","color":"gold","bold":true}',Text2:'{"text":"Shield","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:shield"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -995 63 -46 {Item:{id:"minecraft:shield",Count:1b},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_shield"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_shield]
tag @a remove toggle