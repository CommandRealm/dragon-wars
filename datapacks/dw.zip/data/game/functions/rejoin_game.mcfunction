scoreboard players set @s rc 0
tag @s add playing
tag @s add no_leave_map_msg
execute if score $map map matches 0 run spawnpoint @a[tag=playing] 2000 125 0
execute if score $map map matches 1 run spawnpoint @a[tag=playing] 3000 125 0
execute if score $map map matches 2 run spawnpoint @a[tag=playing] 6000 125 0
execute if score $map map matches 3 run spawnpoint @a[tag=playing] 5000 125 0
execute if score $map map matches 4 run spawnpoint @a[tag=playing] 9000 125 0
execute if score $map map matches 5 run spawnpoint @a[tag=playing] 11000 125 0
execute if score $map map matches 6 run spawnpoint @a[tag=playing] 4000 125 0
execute if score $map map matches 7 run spawnpoint @a[tag=playing] 13000 125 0
execute if score $map map matches 8 run spawnpoint @a[tag=playing] 10000 125 0
execute if score $map map matches 9 run spawnpoint @a[tag=playing] 12000 125 0
execute if score $map map matches 10 run spawnpoint @a[tag=playing] 8000 125 0
execute if score $map map matches 11 run spawnpoint @a[tag=playing] 7000 125 0
execute if score $map map matches 12 run spawnpoint @a[tag=playing] 14000 125 0
execute if score $map map matches 13 run spawnpoint @a[tag=playing] 16000 125 0
execute if score $map map matches 14 run spawnpoint @a[tag=playing] 15000 125 0
execute if score $map map matches -1 run spawnpoint @a[tag=playing] 17000 125 0
execute if score $number mode matches 1..2 if score $number team matches 1 run team join game
execute if score $number team matches 2.. run team join red
execute if score $number team matches 2.. run tag @s add join_red
execute if score $number mode matches 0 run team join dead
execute if score $number mode matches 0 run gamemode spectator @s
execute if score $number mode matches 0 run tp @s @r[tag=playing]
execute if score $number mode matches 1..2 run function game:respawn
execute if score $number mode matches 1..2 run title @s title {"text":"FIGHT!","color":"gold"}
bossbar set minecraft:lobby players @a[tag=!playing]
bossbar set minecraft:refill players @a[tag=playing]
scoreboard players reset @s intro
tag @s remove no_leave_map_msg