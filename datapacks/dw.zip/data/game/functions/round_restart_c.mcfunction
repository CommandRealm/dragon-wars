effect give @a[tag=playing] resistance 1 255 true
effect give @a[tag=playing] regeneration 1 255 true
scoreboard players remove $time cooldown 1
execute if score $time cooldown matches 0 if score $number mode matches 0 run function game:game_start
execute if score $time cooldown matches 0 if score $number mode matches 3 if entity @a[tag=playing,tag=temp_victory] run function game:competitive/round_over
execute if score $time cooldown matches 0 if score $number mode matches 3 unless entity @a[tag=playing,tag=temp_victory] run function game:game_start
execute if score $game state matches 1 if score $time cooldown matches 1.. run schedule function game:round_restart_c 1t