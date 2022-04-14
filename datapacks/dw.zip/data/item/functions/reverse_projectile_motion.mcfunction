# called to reverse projectile motion

# x
execute store result score @s calculate run data get entity @s Motion[0] 100
scoreboard players operation @s calculate *= $-1 number
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s calculate

# y
execute store result score @s calculate run data get entity @s Motion[1] 100
scoreboard players operation @s calculate *= $-1 number
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s calculate

# z
execute store result score @s calculate run data get entity @s Motion[2] 100
scoreboard players operation @s calculate *= $-1 number
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s calculate