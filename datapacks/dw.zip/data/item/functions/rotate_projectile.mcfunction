# called to rotate the projectile



# x
execute store result score @s calculate run data get entity @s Rotation[0] 1
scoreboard players add @s calculate 180
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s calculate

# y
execute store result score @s calculate run data get entity @s Rotation[1] 1
scoreboard players add @s calculate 180
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s calculate
