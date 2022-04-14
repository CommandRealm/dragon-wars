# called when we shoot a Bow

# resetting scoreboard
scoreboard players reset @s shoot_bow

# tagging nearest untagged arrow
tag @e[type=arrow,sort=nearest,limit=1,tag=!tagged_arrow] add tag_arrow

# if it's an explosive bow, run function
execute if data entity @s SelectedItem.tag{explosive_bow:1} run function item:shoot_explosive_bow

execute if data entity @s SelectedItem.tag{sniping_bow:1} run function item:shoot_sniping_bow

# removing tag arrow and adding tagged arrow
tag @e[type=arrow,tag=tag_arrow] add tagged_arrow
tag @e[type=arrow,tag=tag_arrow] remove tag_arrow