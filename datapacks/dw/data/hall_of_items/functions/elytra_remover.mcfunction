setblock -996 62 -58 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Firework Remover"] run tag @p add toggle
kill @e[type=armor_stand,name="Firework Remover"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -4 56 23 {CustomName:'"Firework Remover"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -996 62 -58 jungle_wall_sign[facing=west]{Text1:'{"text":"Firework","color":"gray","bold":true}',Text2:'{"text":"Remover","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:elytra_remover"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -996 62 -58 jungle_wall_sign[facing=west]{Text1:'{"text":"Firework","color":"gray","bold":true}',Text2:'{"text":"Remover","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:elytra_remover"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -995 63 -58 {Item:{id:"minecraft:snowball",Count:1b},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_elytra_remover","unusable"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_elytra_remover]
tag @a remove toggle