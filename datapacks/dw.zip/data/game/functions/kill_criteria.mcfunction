execute if score $time cooldown matches 0 if entity @a[scores={death=1..}] run function game:check_kill_criteria
execute as @a[scores={kill_sound=1..}] at @s run function game:kill_sound
execute as @a[scores={death=1..}] at @s run function game:respawn_start
