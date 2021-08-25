setblock -1004 62 -16 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Diamond Sword"] run tag @p add toggle
kill @e[type=armor_stand,name="Diamond Sword"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand 1 56 24 {CustomName:'"Diamond Sword"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -1004 62 -16 jungle_wall_sign[facing=east]{Text1:'',Text2:'{"text":"Diamond Sword","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:diamond_sword"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -1004 62 -16 jungle_wall_sign[facing=east]{Text1:'',Text2:'{"text":"Diamond Sword","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:diamond_sword"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -1005 63 -16 {Item:{id:"minecraft:diamond_sword",Count:1b},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_d_sword"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_d_sword]
tag @a remove toggle