# called to start the map selection

# setting buttons
setblock 57 78 14 minecraft:stone_button[face=floor,facing=east,powered=false]
setblock 60 78 15 minecraft:stone_button[face=floor,facing=east,powered=false]
setblock 61 78 18 minecraft:stone_button[face=floor,facing=east,powered=false]
setblock 60 78 21 minecraft:stone_button[face=floor,facing=east,powered=false]
setblock 57 78 22 minecraft:stone_button[face=floor,facing=south,powered=false]
setblock 54 78 21 minecraft:stone_button[face=floor,facing=south,powered=false]
setblock 53 78 18 minecraft:stone_button[face=floor,facing=south,powered=false]

bossbar remove refill

# tp and tellraw
tp @a[tag=playing,tag=!temp_victory] 53 77 14 -45 10
tellraw @a[tag=playing,tag=!temp_victory] [{"text":"- ","color":"gray"},{"text":"🗡","color":"light_purple","bold":true},{"text":" Select a map","color":"white"},{"text":".","color":"gray"}]
tellraw @a[tag=playing,tag=temp_victory] ["",{"text":"🗡","color":"light_purple","bold":true},{"text":" Please wait while the other team selects a map","color":"white"},{"text":".","color":"gray"}]

function game:competitive/map/set_nameplates

#sound
execute as @a[tag=playing,tag=!temp_victory] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0
execute as @a[tag=playing,tag=!temp_victory] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.75

effect clear @a[tag=playing]
scoreboard players reset @a[tag=playing] l_blast_timer