effect give @a[tag=playing] resistance 1 255 true
effect give @a[tag=playing] regeneration 1 255 true
scoreboard players remove $time cooldown 1
execute if score $time cooldown matches 0 run function game:game_start
execute if score $game state matches 1 if score $time cooldown matches 1.. run schedule function game:round_restart_c 1t