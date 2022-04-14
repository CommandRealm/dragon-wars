function game:chest_random
execute if score $rand chest_random matches 0 run setblock ~ ~1 ~ trapped_chest[facing=east]
execute if score $rand chest_random matches 1 run setblock ~ ~1 ~ trapped_chest[facing=west]
execute if score $rand chest_random matches 2 run setblock ~ ~1 ~ trapped_chest[facing=north]
execute if score $rand chest_random matches 3 run setblock ~ ~1 ~ trapped_chest[facing=south]
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 2
scoreboard players reset @s lobby_refill