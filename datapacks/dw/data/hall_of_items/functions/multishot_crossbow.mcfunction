setblock -996 62 -32 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Multishot"] run tag @p add toggle
kill @e[type=armor_stand,name="Multishot"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -2 56 24 {CustomName:'"Multishot"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -996 62 -32 jungle_wall_sign[facing=west]{Text1:'{"text":"Multishot","color":"dark_red","bold":true}',Text2:'{"text":"Crossbow","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:multishot_crossbow"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -996 62 -32 jungle_wall_sign[facing=west]{Text1:'{"text":"Multishot","color":"dark_red","bold":true}',Text2:'{"text":"Crossbow","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:multishot_crossbow"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -995 63 -32 {Item:{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"easter_egg",lvl:1}]}},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_multishot"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_multishot]
tag @a remove toggle