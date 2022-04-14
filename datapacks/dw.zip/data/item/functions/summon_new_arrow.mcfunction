# called to summon a new arrow

summon arrow ~ ~ ~ {Tags:["projectile","temporary"]}
data modify entity @e[type=arrow,tag=temporary,limit=1] Motion[0] set from entity @s Motion[0]
data modify entity @e[type=arrow,tag=temporary,limit=1] Motion[1] set from entity @s Motion[1]
data modify entity @e[type=arrow,tag=temporary,limit=1] Motion[2] set from entity @s Motion[2]

# tags
execute if entity @s[tag=explosive_arrow] run tag @e[type=arrow,tag=temporary,limit=1] add explosive_arrow
execute if entity @s[tag=sniping_arrow] run tag @e[type=arrow,tag=temporary,limit=1] add sniping_arrow



kill @s
tag @e[type=arrow,tag=temporary] remove temporary