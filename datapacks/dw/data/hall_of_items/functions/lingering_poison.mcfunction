setblock -1004 62 -40 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Lingering Poison"] run tag @p add toggle
kill @e[type=armor_stand,name="Lingering Poison"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand -2 56 27 {CustomName:'"Lingering Poison"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -1004 62 -40 jungle_wall_sign[facing=east]{Text1:'{"text":"Lingering Potion","color":"green","bold":true}',Text2:'{"text":"Poison Potion","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:lingering_poison"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -1004 62 -40 jungle_wall_sign[facing=east]{Text1:'{"text":"Lingering Potion","color":"green","bold":true}',Text2:'{"text":"Poison Potion","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:lingering_poison"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -1005 63 -40 {Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"long_poison"}},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_poison_potion"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_poison_potion]
tag @a remove toggle