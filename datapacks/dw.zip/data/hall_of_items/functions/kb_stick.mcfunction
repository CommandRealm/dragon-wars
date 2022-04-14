setblock 59 72 -13 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,tag=item_spawn,name="KB Stick"] run tag @p add toggle
kill @e[type=armor_stand,tag=item_spawn,name="KB Stick"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand 0 56 23 {CustomName:'"KB Stick"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock 59 72 -13 jungle_wall_sign[facing=south]{Text1:'{"text":"Knockback","color":"yellow","bold":false}',Text2:'{"text":"Stick","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function hall_of_items:kb_stick"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock 59 72 -13 jungle_wall_sign[facing=south]{Text1:'{"text":"Knockback","color":"yellow","bold":false}',Text2:'{"text":"Stick","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 0 run function hall_of_items:kb_stick"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item 59 73 -14 {Item:{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"s",lvl:1}]}},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","item_temp","model_kb_stick"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_kb_stick]
tag @a remove toggle
execute as @e[type=armor_stand,tag=item_spawn] at @s unless data entity @s ArmorItems[0].id run tag @s add temp
item replace entity @e[type=armor_stand,tag=item_spawn,tag=temp] armor.feet with netherite_boots{displayName:['','']}
execute at @e[type=item,tag=item_temp,sort=nearest,limit=1] positioned ~ ~-1 ~1 if block ~ ~ ~ jungle_wall_sign[facing=south] run data modify entity @e[type=armor_stand,tag=temp,limit=1] ArmorItems[0].tag.displayName[0] set from block ~ ~ ~ Text1
execute at @e[type=item,tag=item_temp,sort=nearest,limit=1] positioned ~ ~-1 ~1 if block ~ ~ ~ jungle_wall_sign[facing=south] run data modify entity @e[type=armor_stand,tag=temp,limit=1] ArmorItems[0].tag.displayName[1] set from block ~ ~ ~ Text2

execute at @e[type=item,tag=item_temp,sort=nearest,limit=1] positioned ~ ~-1 ~-1 if block ~ ~ ~ jungle_wall_sign[facing=north] run data modify entity @e[type=armor_stand,tag=temp,limit=1] ArmorItems[0].tag.displayName[0] set from block ~ ~ ~ Text1
execute at @e[type=item,tag=item_temp,sort=nearest,limit=1] positioned ~ ~-1 ~-1 if block ~ ~ ~ jungle_wall_sign[facing=north] run data modify entity @e[type=armor_stand,tag=temp,limit=1] ArmorItems[0].tag.displayName[1] set from block ~ ~ ~ Text2

execute if score $game state matches 1 if score $number mode matches 3 if score $time competitive matches 2.. unless entity @a[tag=temporary_tag] unless data block ~ ~ ~ {Text1:'{"text":""}'} run tellraw @a ["",{"text":"🗡 ","color":"light_purple","bold":true},{"text":"The ","color":"gray"},{"nbt":"Text1","block":"~ ~ ~","interpret": true},{"text":" "},{"nbt":"Text2","block":"~ ~ ~","interpret": true},{"text":" has been ","color":"gray"},{"text":"disabled","color":"red"},{"text":"!","color":"gray"}]
execute if score $game state matches 1 if score $number mode matches 3 if score $time competitive matches 2.. unless entity @a[tag=temporary_tag] if data block ~ ~ ~ {Text1:'{"text":""}'} run tellraw @a ["",{"text":"🗡 ","color":"light_purple","bold":true},{"text":"The ","color":"gray"},{"nbt":"Text2","block": "~ ~ ~","interpret": true},{"text":" has been ","color":"gray"},{"text":"disabled","color":"red"},{"text":"!","color":"gray"}]

tag @e[type=armor_stand] remove temp
tag @e[type=item] remove item_temp