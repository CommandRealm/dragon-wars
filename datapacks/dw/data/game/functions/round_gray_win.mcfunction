scoreboard players add Gray: rounds 1
tellraw @a[tag=playing] [{"text":"Gray has won the round!","color":"dark_gray"}]
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100000 0.75
scoreboard players operation Gray: fake_round = Gray: rounds
scoreboard players operation Gray: fake_round -= $round round_criteria
tag @a[team=gray,tag=playing] add celebration
scoreboard players set $time cooldown 100
execute if score Gray: fake_round matches 0.. run function game:round_end_c
execute unless score Gray: fake_round matches 0.. run function game:round_restart_c
execute as @a[tag=playing] at @s run function game:join_team