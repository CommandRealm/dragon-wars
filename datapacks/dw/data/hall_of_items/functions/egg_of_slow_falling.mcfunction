setblock -1004 62 -42 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Slow Falling"] run tag @p add toggle
kill @e[type=armor_stand,name="Slow Falling"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -3 56 23 {CustomName:'"Slow Falling"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -1004 62 -42 jungle_wall_sign[facing=east]{Text1:'{"text":"Egg of","color":"yellow","bold":true}',Text2:'{"text":"Slow Falling","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:egg_of_slow_falling"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -1004 62 -42 jungle_wall_sign[facing=east]{Text1:'{"text":"Egg of","color":"yellow","bold":true}',Text2:'{"text":"Slow Falling","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:egg_of_slow_falling"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -1005 63 -42 {Item:{id:"minecraft:egg",Count:1b},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_egg"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_egg]
tag @a remove toggle