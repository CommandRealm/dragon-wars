fill ~ ~ ~ ~ ~ ~ air replace light_blue_stained_glass
execute if entity @s[tag=set_dirt_path] run setblock ~ ~-1 ~ dirt_path
execute as @e[tag=ice_capsule,tag=set_water] at @s run setblock ~ ~ ~ water
playsound minecraft:block.glass.break master @a ~ ~ ~ 0.15 1
particle block ice ~ ~ ~ 0.5 0.5 0.5 0 1
kill @s