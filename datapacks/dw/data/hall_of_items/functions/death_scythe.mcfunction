setblock -1004 62 -54 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Death Scythe"] run tag @p add toggle
kill @e[type=armor_stand,name="Death Scythe"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -4 56 23 {CustomName:'"Death Scythe"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -1004 62 -54 jungle_wall_sign[facing=east]{Text1:'{"text":"Death\'s","color":"dark_gray","bold":true}',Text2:'{"text":"Scythe","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:death_scythe"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -1004 62 -54 jungle_wall_sign[facing=east]{Text1:'{"text":"Death\'s","color":"dark_gray","bold":true}',Text2:'{"text":"Scythe","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:death_scythe"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -1005 63 -54 {Item:{id:"minecraft:netherite_hoe",Count:1b},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_death_scythe","unusable"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_death_scythe]
tag @a remove toggle