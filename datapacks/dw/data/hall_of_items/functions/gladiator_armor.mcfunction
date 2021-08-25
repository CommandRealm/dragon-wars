setblock -996 62 -24 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Gladiator Armor"] run tag @p add toggle
kill @e[type=armor_stand,name="Gladiator Armor"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -1 56 23 {CustomName:'"Gladiator Armor"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -996 62 -24 jungle_wall_sign[facing=west]{Text1:'{"text":"Gladiator","color":"dark_red","bold":true}',Text2:'{"text":"Armor","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:gladiator_armor"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -996 62 -24 jungle_wall_sign[facing=west]{Text1:'{"text":"Gladiator","color":"dark_red","bold":true}',Text2:'{"text":"Armor","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:gladiator_armor"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -995 63 -24 {Item:{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Colors:[I;15138816]}}},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_gladiator"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_gladiator]
tag @a remove toggle