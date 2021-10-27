# called to check snowball proximity

# seeing which snowball is ours
tag @s add temporary_tag
execute as @a[distance=..3] at @s run scoreboard players operation @s calculate = @s id
execute as @a[distance=..3] at @s run scoreboard players operation @s calculate -= @e[type=snowball,tag=temporary_tag,limit=1] id

execute as @a[distance=..3] at @s unless score @s calculate matches 0 run function item:hit_by_snowball

# removing tag
tag @s remove temporary_tag