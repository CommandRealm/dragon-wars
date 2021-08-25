scoreboard players add @e[tag=throwable_tnt] tnt_time 1
execute at @e[tag=throwable_tnt] run particle smoke ~ ~3.75 ~ 0 0 0 0 1
execute at @e[tag=throwable_tnt] run particle flame ~ ~2.5 ~ 0 0 0 0.05 1
execute as @e[tag=throwable_tnt,scores={tnt_time=4..}] at @s if entity @a[gamemode=adventure,distance=..3,scores={tnt_cooldown=0}] run scoreboard players set @s tnt_time 60
scoreboard players set @e[tag=throwable_tnt,scores={tnt_time=4..},nbt={OnGround:1b}] tnt_time 60
execute as @e[tag=throwable_tnt,scores={tnt_time=50..}] at @s run function item:exploding_tnt
scoreboard players add @e[tag=throwable_tnt,scores={tnt_time=2..}] tnt_rotation 15
execute as @e[tag=throwable_tnt,scores={tnt_time=2..}] at @s store result entity @s Rotation[0] float 1 run scoreboard players get @s tnt_rotation
