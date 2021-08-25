setblock -996 62 -50 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Levitation Blast"] run tag @p add toggle
kill @e[type=armor_stand,name="Levitation Blast"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -4 56 23 {CustomName:'"Levitation Blast"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -996 62 -50 jungle_wall_sign[facing=west]{Text1:'{"text":"Levitation","color":"#f9baff","bold":true}',Text2:'{"text":"Blast","color":"#f9baff","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:levitation_blast"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -996 62 -50 jungle_wall_sign[facing=west]{Text1:'{"text":"Levitation","color":"#f9baff","bold":true}',Text2:'{"text":"Blast","color":"#f9baff","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:levitation_blast"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -995 63 -50 {Item:{id:"minecraft:end_crystal",Count:1b},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_levitation_blast","unusable"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_levitation_blast]
tag @a remove toggle