gamemode adventure @s
tp @s @e[tag=respawn_point,sort=random,limit=1]
clear @s
effect clear @s
function game:start_loot
scoreboard players reset @s l_blast_timer
tag @s remove iron
tag @s remove chain
tag @s remove ninja
tag @s remove lucky
tag @s remove spartan
tag @s remove gladiator
tag @s remove jump_boost
scoreboard players set @s elytra 1
tag @s add e_cooldown
scoreboard players add @s rounds 0
scoreboard players add @s kills 0
scoreboard players add @s treasure 0