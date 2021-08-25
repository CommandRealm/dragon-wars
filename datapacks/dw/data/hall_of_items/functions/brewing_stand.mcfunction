setblock -1004 62 -46 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Brewing Stand"] run tag @p add toggle
kill @e[type=armor_stand,name="Brewing Stand"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -3 56 25 {CustomName:'"Brewing Stand"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -1004 62 -46 jungle_wall_sign[facing=east]{Text1:'{"text":" ","color":"yellow","bold":true}',Text2:'{"text":"Risky Brew","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:brewing_stand"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -1004 62 -46 jungle_wall_sign[facing=east]{Text1:'{"text":" ","color":"yellow","bold":true}',Text2:'{"text":"Risky Brew","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:brewing_stand"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -1005 63 -46 {Item:{id:"minecraft:brewing_stand",Count:1b},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_brewing_stand"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_brewing_stand]
tag @a remove toggle