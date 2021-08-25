setblock -996 62 -14 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Rage Axe"] run tag @p add toggle
kill @e[type=armor_stand,name="Rage Axe"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand 1 56 26 {CustomName:'"Rage Axe"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -996 62 -14 jungle_wall_sign[facing=west]{Text1:'',Text2:'{"text":"Rage Axe","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:rage_axe"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -996 62 -14 jungle_wall_sign[facing=west]{Text1:'',Text2:'{"text":"Rage Axe","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:rage_axe"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -995 63 -14 {Item:{id:"minecraft:iron_axe",Count:1b},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_axe"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_axe]
tag @a remove toggle