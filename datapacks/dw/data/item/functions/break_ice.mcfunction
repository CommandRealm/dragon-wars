fill ~ ~ ~ ~ ~ ~ air replace light_blue_stained_glass
execute if entity @s[tag=set_grass_path] run setblock ~ ~-1 ~ grass_path
playsound minecraft:block.glass.break master @a ~ ~ ~ 0.15 1
particle block ice ~ ~ ~ 0.5 0.5 0.5 0 1
kill @s