scoreboard players operation $time chest_refill_t = $time chest_refill
tellraw @a[tag=playing] [{"text":"The","color":"gold"},{"text":" chests ","color":"yellow"},{"text":"have been refilled","color":"gold"},{"text":"!","color":"gray"}]
execute as @e[tag=chest] at @s unless block ~ ~1 ~ trapped_chest run function game:chest_rotation
execute as @a[tag=playing] at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 2
execute as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.5 0.5