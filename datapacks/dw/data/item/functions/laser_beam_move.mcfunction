tp @s ^ ^ ^-0.5
particle dust 10 1 20 1 ~ ~ ~ 1 1 1 2 5
execute as @a[distance=..2.5,gamemode=adventure] at @s unless entity @s[scores={l_blast_timer=1..}] run function item:hit_by_laser_beam
