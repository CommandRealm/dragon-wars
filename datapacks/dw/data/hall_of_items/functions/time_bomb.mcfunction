setblock -1004 62 -50 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Time Bomb"] run tag @p add toggle
kill @e[type=armor_stand,name="Time Bomb"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -4 56 23 {CustomName:'"Time Bomb"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -1004 62 -50 jungle_wall_sign[facing=east]{Text1:'{"text":"Time","color":"dark_gray","bold":true}',Text2:'{"text":"Bomb","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:time_bomb"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -1004 62 -50 jungle_wall_sign[facing=east]{Text1:'{"text":"Time","color":"dark_gray","bold":true}',Text2:'{"text":"Bomb","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:time_bomb"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -1005 63 -50 {Item:{id:"minecraft:chiseled_polished_blackstone",Count:1b},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_time_bomb","unusable"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_time_bomb]
tag @a remove toggle