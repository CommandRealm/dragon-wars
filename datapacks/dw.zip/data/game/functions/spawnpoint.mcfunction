execute as @e[tag=ice_capsule] at @s run fill ~ ~ ~ ~ ~ ~ air replace light_blue_stained_glass
execute as @e[tag=ice_capsule,tag=set_dirt_path] at @s run setblock ~ ~-1 ~ dirt_path
execute as @e[tag=ice_capsule,tag=set_water] at @s run setblock ~ ~ ~ water
kill @e[tag=firework]
execute as @a[tag=playing] at @s unless entity @s[x=0,y=66,z=0,distance=..200] run kill @e[type=item,distance=..500]
execute as @a[tag=playing] at @s unless entity @s[x=0,y=66,z=0,distance=..200] run kill @e[type=arrow,distance=..500]
execute as @a[tag=playing] at @s unless entity @s[x=0,y=66,z=0,distance=..200] run kill @e[type=trident,distance=..500]
tag @a[tag=playing,x=0,y=66,z=0,distance=..200] remove playing


