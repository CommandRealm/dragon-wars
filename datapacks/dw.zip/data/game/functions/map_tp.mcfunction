execute if score $map map matches 0 run tp @s 2000 125 0 0 0
execute if score $map map matches 0 run spawnpoint @a[tag=playing] 2000 125 0
execute if score $map map matches 1 run tp @s 3000 125 0 0 0
execute if score $map map matches 1 run spawnpoint @a[tag=playing] 3000 125 0
execute if score $map map matches 2 run tp @s 6000 125 0 0 0
execute if score $map map matches 2 run spawnpoint @a[tag=playing] 6000 125 0
execute if score $map map matches 3 run tp @s 5000 125 0 0 0
execute if score $map map matches 3 run spawnpoint @a[tag=playing] 5000 125 0
execute if score $map map matches 4 run tp @s 9000 125 0 0 0
execute if score $map map matches 4 run spawnpoint @a[tag=playing] 9000 125 0
execute if score $map map matches 5 run tp @s 11000 125 0 0 0
execute if score $map map matches 5 run spawnpoint @a[tag=playing] 11000 125 0
execute if score $map map matches 6 run tp @s 4000 125 0 0 0
execute if score $map map matches 6 run spawnpoint @a[tag=playing] 4000 125 0
execute if score $map map matches 7 run tp @s 13000 125 0 0 0
execute if score $map map matches 7 run spawnpoint @a[tag=playing] 13000 125 0
execute if score $map map matches 8 run tp @s 10000 125 0 0 0
execute if score $map map matches 8 run spawnpoint @a[tag=playing] 10000 125 0
execute if score $map map matches 9 run tp @s 12000 125 0 0 0
execute if score $map map matches 9 run spawnpoint @a[tag=playing] 12000 125 0
execute if score $map map matches 10 run tp @s 8000 125 0 0 0
execute if score $map map matches 10 run spawnpoint @a[tag=playing] 8000 125 0
execute if score $map map matches 11 run tp @s 7000 125 0 0 0
execute if score $map map matches 11 run spawnpoint @a[tag=playing] 7000 125 0
execute if score $map map matches 12 run tp @s 14000 125 0 0 0
execute if score $map map matches 12 run spawnpoint @a[tag=playing] 14000 125 0
execute if score $map map matches 13 run tp @s 16000 125 0 0 0
execute if score $map map matches 13 run spawnpoint @a[tag=playing] 16000 125 0
execute if score $map map matches 14 run tp @s 15000 125 0 0 0
execute if score $map map matches 14 run spawnpoint @a[tag=playing] 15000 125 0
execute if score $map map matches -1 run tp @s 17000 125 0 0 0
execute if score $map map matches -1 run spawnpoint @a[tag=playing] 17000 125 0

execute as @s[gamemode=spectator,tag=!no_leave_map_msg] at @s unless entity @a[tag=playing,gamemode=!spectator,distance=..5] run tellraw @s[gamemode=spectator,tag=!no_leave_map_msg] ["",{"text":"🗡 ","color":"light_purple","bold":true},{"text":"Please stay and watch the game.","color":"red"}]
execute as @s[gamemode=spectator,tag=!no_leave_map_msg] at @s unless entity @a[tag=playing,gamemode=!spectator,distance=..5] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 1