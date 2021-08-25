setblock -1004 62 -14 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Iron Sword"] run tag @p add toggle
kill @e[type=armor_stand,name="Iron Sword"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand 1 56 23 {CustomName:'"Iron Sword"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -1004 62 -14 jungle_wall_sign[facing=east]{Text1:'',Text2:'{"text":"Iron Sword","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:iron_sword"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -1004 62 -14 jungle_wall_sign[facing=east]{Text1:'',Text2:'{"text":"Iron Sword","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:iron_sword"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -1005 63 -14 {Item:{id:"minecraft:iron_sword",Count:1b},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_sword"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_sword]
tag @a remove toggle