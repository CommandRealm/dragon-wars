setblock -996 62 -56 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Time Warp"] run tag @p add toggle
kill @e[type=armor_stand,name="Time Warp"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -4 56 23 {CustomName:'"Time Warp"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -996 62 -56 jungle_wall_sign[facing=west]{Text1:'{"text":"Time","color":"gold","bold":true}',Text2:'{"text":"Warp","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:time_warp"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -996 62 -56 jungle_wall_sign[facing=west]{Text1:'{"text":"Time","color":"gold","bold":true}',Text2:'{"text":"Warp","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:time_warp"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -995 63 -56 {Item:{id:"minecraft:clock",Count:1b},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_time_warp","unusable"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_time_warp]
tag @a remove toggle