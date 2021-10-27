setblock -1004 62 -56 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Armor Breaker"] run tag @p add toggle
kill @e[type=armor_stand,name="Armor Breaker"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -4 56 23 {CustomName:'"Armor Breaker"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -1004 62 -56 jungle_wall_sign[facing=east]{Text1:'{"text":"Armor","color":"gray","bold":true}',Text2:'{"text":"Breaker","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:armor_breaker"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -1004 62 -56 jungle_wall_sign[facing=east]{Text1:'{"text":"Armor","color":"gray","bold":true}',Text2:'{"text":"Breaker","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:armor_breaker"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -1005 63 -56 {Item:{id:"minecraft:iron_pickaxe",Count:1b},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_armor_breaker","unusable"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_armor_breaker]
tag @a remove toggle