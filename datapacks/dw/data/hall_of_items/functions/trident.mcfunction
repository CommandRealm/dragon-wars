setblock -996 62 -34 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Trident"] run tag @p add toggle
kill @e[type=armor_stand,name="Trident"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -2 56 25 {CustomName:'"Trident"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -996 62 -34 jungle_wall_sign[facing=west]{Text1:'{"text":" ","color":"dark_red","bold":true}',Text2:'{"text":"Trident","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:trident"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -996 62 -34 jungle_wall_sign[facing=west]{Text1:'{"text":" ","color":"dark_red","bold":true}',Text2:'{"text":"Trident","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:trident"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -995 63 -34 {Item:{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{id:"easter_egg",lvl:1}]}},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_trident"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_trident]
tag @a remove toggle