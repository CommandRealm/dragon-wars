execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100000 0.75
gamemode spectator @a[tag=playing,scores={treasure=..4}]
tag @a remove won_treasure_mode
tag @a[tag=playing,scores={treasure=5..}] add won_treasure_mode
tag @a[tag=playing,scores={treasure=5..}] add celebration

scoreboard players set $time cooldown 100
function game:round_end_c