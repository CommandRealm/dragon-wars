scoreboard players set @s treasure_alone 0
tp @s @e[sort=random,limit=1,tag=respawn_point]
data merge entity @s {Motion:[0.0d,-1.5d,0.0d]}