setblock -996 62 -18 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="KB Stick"] run tag @p add toggle
kill @e[type=armor_stand,name="KB Stick"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand 0 56 23 {CustomName:'"KB Stick"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -996 62 -18 jungle_wall_sign[facing=west]{Text1:'{"text":"Knockback","color":"yellow","bold":true}',Text2:'{"text":"Stick","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:kb_stick"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -996 62 -18 jungle_wall_sign[facing=west]{Text1:'{"text":"Knockback","color":"yellow","bold":true}',Text2:'{"text":"Stick","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:kb_stick"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -995 63 -18 {Item:{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"s",lvl:1}]}},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_kb_stick"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_kb_stick]
tag @a remove toggle