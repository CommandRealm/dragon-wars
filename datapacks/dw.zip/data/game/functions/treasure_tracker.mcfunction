
execute unless entity @s[distance=..2] positioned ^ ^ ^1.25 run function game:treasure_tracker
execute unless entity @s[distance=..2] positioned ~ ~.25 ~ positioned ^ ^ ^0.5 run particle minecraft:dust 5 5 5 0.5 ~ ~ ~ 0 0 0 0 1 force @s