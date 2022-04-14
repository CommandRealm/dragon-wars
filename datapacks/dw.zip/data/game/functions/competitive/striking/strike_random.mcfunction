# called when a random item is striked

# selecting random
tag @e[type=armor_stand,tag=item_spawn,sort=random,limit=1] add striked_item

execute as @e[type=armor_stand,tag=striked_item] at @s unless data entity @s {ArmorItems:[{tag:{displayName:['{"text":""}']}}]} run tellraw @a ["",{"text":"🗡 ","color":"light_purple","bold":true},{"text":"The ","color":"gray"},{"nbt":"ArmorItems[0].tag.displayName[0]","entity":"@s","interpret": true},{"text":" "},{"nbt":"ArmorItems[0].tag.displayName[1]","entity":"@s","interpret": true},{"text":" has been ","color":"gray"},{"text":"disabled","color":"red"},{"text":"!","color":"gray"}]
execute as @e[type=armor_stand,tag=striked_item] at @s if data entity @s {ArmorItems:[{tag:{displayName:['{"text":""}']}}]} run tellraw @a ["",{"text":"🗡 ","color":"light_purple","bold":true},{"text":"The ","color":"gray"},{"nbt":"ArmorItems[0].tag.displayName[0]","entity":"@s","interpret": true},{"nbt":"ArmorItems[0].tag.displayName[1]","entity":"@s","interpret": true},{"text":" has been ","color":"gray"},{"text":"disabled","color":"red"},{"text":"!","color":"gray"}]
tag @r add temporary_tag

kill @e[type=armor_stand,tag=striked_item]
function hall_of_items:all_ran
function hall_of_items:all_ran

function game:competitive/striking/current_strike_over

tag @a remove temporary_tag