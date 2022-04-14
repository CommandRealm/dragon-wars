scoreboard players add Yellow: rounds 1
tellraw @a[tag=playing] [{"text":"Yellow ","color":"yellow"},{"text":"has won the round!","color":"gold"}]
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100000 0.75
scoreboard players operation Yellow: fake_round = Yellow: rounds
scoreboard players operation Yellow: fake_round -= $round round_criteria
tag @a[team=yellow,tag=playing] add celebration
tag @a remove temp_victory
execute if score $number mode matches 3 run tag @a[tag=join_yellow,tag=playing] add temp_victory
scoreboard players set $time cooldown 100
execute if score Yellow: fake_round matches 0.. run function game:round_end_c
execute unless score Yellow: fake_round matches 0.. run function game:round_restart_c
execute as @a[tag=playing] at @s run function game:join_team