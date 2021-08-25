scoreboard players add @a[team=game,tag=playing] rounds 1
tellraw @a[tag=playing] [{"selector":"@a[team=game,tag=playing]"},{"text":" has won the round!","color":"dark_purple"}]
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100000 0.75
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_round = @s rounds
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_round -= $round round_criteria
tag @a[team=game,tag=playing] add celebration
scoreboard players set $time cooldown 100
execute if entity @a[scores={fake_round=0..}] run function game:round_end_c
execute unless entity @a[scores={fake_round=0..}] run function game:round_restart_c