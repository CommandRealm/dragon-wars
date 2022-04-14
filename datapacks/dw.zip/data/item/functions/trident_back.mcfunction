tp @s ~ 10 ~
execute store result entity @s Pos[0] double 1 run scoreboard players get @s trident_x
execute store result entity @s Pos[2] double 1 run scoreboard players get @s trident_z
scoreboard players reset @s trident_tp