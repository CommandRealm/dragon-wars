# called to check snowball proximity

# seeing which snowball is ours
tag @s add temporary_tag
execute as @a[distance=..5] at @s run scoreboard players operation @s calculate = @s id
execute as @a[distance=..5] at @s run scoreboard players operation @s calculate -= @e[type=egg,tag=temporary_tag,limit=1] id

execute as @a[distance=..5] at @s unless score @s calculate matches 0 run effect give @s slow_falling 30 10

# removing tag
tag @s remove temporary_tag