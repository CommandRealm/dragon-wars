setblock 63 72 -13 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,tag=item_spawn,name="Lucky Armor"] run tag @p add toggle
kill @e[type=armor_stand,tag=item_spawn,name="Lucky Armor"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand 0 56 26 {CustomName:'"Lucky Armor"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock 63 72 -13 cherry_wall_sign[facing=south]{front_text:{messages:['[{"italic":false,"bold":false,"color":"yellow","text":"L"},{"text":"u","color":"gold"},{"text":"c","color":"yellow"},{"text":"k","color":"gold"},{"text":"y","color":"yellow"}]', '[{"text":"A","color":"yellow","bold":false},{"text":"r","color":"gold"},{"text":"m","color":"yellow"},{"text":"o","color":"gold"},{"text":"r","color":"yellow"}]', '{"text":"[ON]","color":"green","clickEvent":{"action":"run_command","value":"/function hall_of_items:lucky_armor"}}', '{"text":""}']}}
execute unless entity @a[tag=toggle] run setblock 63 72 -13 cherry_wall_sign[facing=south]{front_text:{messages:['[{"italic":false,"bold":false,"color":"yellow","text":"L"},{"text":"u","color":"gold"},{"text":"c","color":"yellow"},{"text":"k","color":"gold"},{"text":"y","color":"yellow"}]', '[{"text":"A","color":"yellow","bold":false},{"text":"r","color":"gold"},{"text":"m","color":"yellow"},{"text":"o","color":"gold"},{"text":"r","color":"yellow"}]', '{"text":"[OFF]","color":"red","clickEvent":{"action":"run_command","value":"/function hall_of_items:lucky_armor"}}', '{"text":""}']}}
execute if entity @a[tag=toggle] run summon item 63 73 -14 {Item:{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Colors:[I;16431616]}}},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","item_temp","model_lucky"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_lucky]
tag @a remove toggle
execute as @e[type=armor_stand,tag=item_spawn] at @s unless data entity @s ArmorItems[0].id run tag @s add temp
item replace entity @e[type=armor_stand,tag=item_spawn,tag=temp] armor.feet with netherite_boots{displayName:['','']}
execute at @e[type=item,tag=item_temp,sort=nearest,limit=1] positioned ~ ~-1 ~1 if block ~ ~ ~ cherry_wall_sign[facing=south] run data modify entity @e[type=armor_stand,tag=temp,limit=1] ArmorItems[0].tag.displayName[0] set from block ~ ~ ~ front_text.messages[0]
execute at @e[type=item,tag=item_temp,sort=nearest,limit=1] positioned ~ ~-1 ~1 if block ~ ~ ~ cherry_wall_sign[facing=south] run data modify entity @e[type=armor_stand,tag=temp,limit=1] ArmorItems[0].tag.displayName2[0] set from block ~ ~ ~ front_text.messages[1]

execute at @e[type=item,tag=item_temp,sort=nearest,limit=1] positioned ~ ~-1 ~-1 if block ~ ~ ~ cherry_wall_sign[facing=north] run data modify entity @e[type=armor_stand,tag=temp,limit=1] ArmorItems[0].tag.displayName[0] set from block ~ ~ ~ front_text.messages[0]
execute at @e[type=item,tag=item_temp,sort=nearest,limit=1] positioned ~ ~-1 ~-1 if block ~ ~ ~ cherry_wall_sign[facing=north] run data modify entity @e[type=armor_stand,tag=temp,limit=1] ArmorItems[0].tag.displayName2[0] set from block ~ ~ ~ front_text.messages[1]

data modify storage dragon_wars:text1 Text1 set from block ~ ~ ~ front_text.messages[0]

execute if score $game state matches 1 if score $number mode matches 3 if score $time competitive matches 2.. unless entity @a[tag=temporary_tag] unless data storage dragon_wars:text1 {Text1:'{"text":""}'} run tellraw @a ["",{"text":"🗡 ","color":"light_purple","bold":true},{"text":"The ","color":"gray"},{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret": true},{"text":" "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret": true},{"text":" has been ","color":"gray"},{"text":"disabled","color":"red"},{"text":"!","color":"gray"}]
execute if score $game state matches 1 if score $number mode matches 3 if score $time competitive matches 2.. unless entity @a[tag=temporary_tag] if data storage dragon_wars:text1 {Text1:'{"text":""}'} run tellraw @a ["",{"text":"🗡 ","color":"light_purple","bold":true},{"text":"The ","color":"gray"},{"nbt":"front_text.messages[1]","block": "~ ~ ~","interpret": true},{"text":" has been ","color":"gray"},{"text":"disabled","color":"red"},{"text":"!","color":"gray"}]

tag @e[type=armor_stand] remove temp
tag @e[type=item] remove item_temp

