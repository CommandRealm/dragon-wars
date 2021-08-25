setblock -1004 62 -34 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Flame Bow"] run tag @p add toggle
kill @e[type=armor_stand,name="Flame Bow"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -1 56 27 {CustomName:'"Flame Bow"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -1004 62 -34 jungle_wall_sign[facing=east]{Text1:'{"text":" ","color":"dark_green","bold":true}',Text2:'{"text":"Fire Bow","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:flame_bow"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -1004 62 -34 jungle_wall_sign[facing=east]{Text1:'{"text":" ","color":"dark_green","bold":true}',Text2:'{"text":"Fire Bow","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:flame_bow"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -1005 63 -34 {Item:{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"easter_egg",lvl:1}]}},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_flame"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_flame]
tag @a remove toggle