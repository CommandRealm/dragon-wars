setblock 64 72 -13 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,tag=item_spawn,name="Ninja Outfit"] run tag @p add toggle
kill @e[type=armor_stand,tag=item_spawn,name="Ninja Outfit"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand 0 56 27 {CustomName:'"Ninja Outfit"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock 64 72 -13 cherry_wall_sign[facing=south]{front_text:{messages:['{"text":"Ninja","color":"dark_aqua","bold":false}', '{"text":"Armor","color":"dark_aqua","bold":false,"clickEvent":{"action":"run_command","value":"/function hall_of_items:ninja_armor"}}', '{"text":"[ON]","color":"green"}', '{"text":""}']}}
execute unless entity @a[tag=toggle] run setblock 64 72 -13 cherry_wall_sign[facing=south]{front_text:{messages:['{"text":"Ninja","color":"dark_aqua","bold":false}', '{"text":"Armor","color":"dark_aqua","bold":false,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 0 run function hall_of_items:ninja_armor"}}', '{"text":"[OFF]","color":"dark_red"}', '{"text":""}']}}
execute if entity @a[tag=toggle] run summon item 64 73 -14 {Item:{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Colors:[I;5479591]}}},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","item_temp","model_ninja"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_ninja]
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