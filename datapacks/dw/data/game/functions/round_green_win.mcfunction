scoreboard players add Green: rounds 1
tellraw @a[tag=playing] [{"text":"Green has won the round!","color":"green"}]
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100000 0.75
scoreboard players operation Green: fake_round = Green: rounds
scoreboard players operation Green: fake_round -= $round round_criteria
tag @a[team=green,tag=playing] add celebration
scoreboard players set $time cooldown 100
execute if score Green: fake_round matches 0.. run function game:round_end_c
execute unless score Green: fake_round matches 0.. run function game:round_restart_c
execute as @a[tag=playing] at @s run function game:join_team