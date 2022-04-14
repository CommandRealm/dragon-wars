# called to increase the damage level of this arrow.

# getting our current damage level
execute store result score @s calculate run data get entity @s damage 10



# adding one
scoreboard players add @s calculate 1
execute if score @s calculate matches 20.. run scoreboard players add @s calculate 1
execute if score @s calculate matches 50.. run scoreboard players add @s calculate 1

# reapplying damage score
execute store result entity @s damage double 0.1 run scoreboard players get @s calculate


# resetting our timer
scoreboard players set @s sniping_bow 0