scoreboard players add Red: rounds 1
tellraw @a[tag=playing] [{"text":"Red ","color":"dark_red"},{"text":"has won the round!","color":"gold"}]
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100000 0.75
scoreboard players operation Red: fake_round = Red: rounds
scoreboard players operation Red: fake_round -= $round round_criteria
tag @a[team=red,tag=playing] add celebration
tag @a remove temp_victory
execute if score $number mode matches 3 run tag @a[tag=join_red,tag=playing] add temp_victory
scoreboard players set $time cooldown 100
execute if score Red: fake_round matches 0.. run function game:round_end_c
execute unless score Red: fake_round matches 0.. run function game:round_restart_c
execute as @a[tag=playing] at @s run function game:join_team