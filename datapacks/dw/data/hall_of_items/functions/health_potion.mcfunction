setblock -1004 62 -38 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Health Potion"] run tag @p add toggle
kill @e[type=armor_stand,name="Health Potion"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -2 56 26 {CustomName:'"Health Potion"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -1004 62 -38 jungle_wall_sign[facing=east]{Text1:'{"text":" ","color":"dark_red","bold":true}',Text2:'{"text":"Healing Potion","color":"light_purple","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:health_potion"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -1004 62 -38 jungle_wall_sign[facing=east]{Text1:'{"text":" ","color":"dark_red","bold":true}',Text2:'{"text":"Healing Potion","color":"light_purple","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:health_potion"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -1005 63 -38 {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"healing"}},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_health_potion"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_health_potion]
tag @a remove toggle