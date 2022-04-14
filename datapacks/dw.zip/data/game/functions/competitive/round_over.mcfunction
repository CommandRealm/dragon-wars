# called when the round is over.

tp @a[tag=playing] 57 72 18
scoreboard players set $time competitive 800
gamemode adventure @a[tag=playing]
effect clear @a[tag=playing]
clear @a[tag=playing]

#sound
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

function game:competitive/map/start