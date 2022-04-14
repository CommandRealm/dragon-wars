execute as @a[scores={team_kill=1..}] at @s run function game:team_check_kill
execute as @a[scores={kill_sound=1..}] at @s run function game:kill_sound
execute as @a[scores={death=1..}] at @s run function game:respawn_start
