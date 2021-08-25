setblock -1004 62 -18 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Fire Sword"] run tag @p add toggle
kill @e[type=armor_stand,name="Fire Sword"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand 1 56 25 {CustomName:'"Fire Sword"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -1004 62 -18 jungle_wall_sign[facing=east]{Text1:'',Text2:'{"text":"Fire Sword","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:fire_sword"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -1004 62 -18 jungle_wall_sign[facing=east]{Text1:'',Text2:'{"text":"Fire Sword","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:fire_sword"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -1005 63 -18 {Item:{id:"minecraft:golden_sword",tag:{Enchantments:[{id:"fire_aspect",lvl:1}]},Count:1b},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_f_sword"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_f_sword]
tag @a remove toggle