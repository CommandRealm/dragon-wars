execute if entity @s[scores={respawn=60}] run function game:respawn_msg
execute if entity @s[scores={respawn=40}] run function game:respawn_msg
execute if entity @s[scores={respawn=20}] run function game:respawn_msg
scoreboard players remove @s respawn 1
execute if entity @s[scores={respawn=0}] run function game:respawn_msg
execute if entity @s[scores={respawn=0}] if score $time cooldown matches 0 run function game:respawn