playsound minecraft:block.ender_chest.open master @a ~ ~ ~ 1 2
particle minecraft:firework ~ ~1 ~ 0.25 0.25 0.25 0.25 10
fill ~ ~1 ~ ~ ~1 ~ air replace trapped_chest
execute if entity @s[tag=lobby_chest] run scoreboard players set @s lobby_refill 100