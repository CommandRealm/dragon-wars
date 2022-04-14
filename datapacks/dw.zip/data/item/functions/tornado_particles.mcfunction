scoreboard players remove @a[scores={tornado_jump=1..}] tornado_jump 1
execute as @e[tag=spin] at @s positioned as @a[scores={tornado_jump=1..}] run particle spit ^ ^ ^2 0 0 0 0.2 1
execute as @e[tag=spin] at @s positioned as @a[scores={tornado_jump=1..}] run particle happy_villager ^ ^ ^2 0.05 0.05 0.05 0.2 1
execute as @e[tag=spin] at @s positioned as @a[scores={tornado_jump=1..}] run particle spit ^ ^ ^-2 0 0 0 0.2 1
execute as @e[tag=spin] at @s positioned as @a[scores={tornado_jump=1..}] run particle happy_villager ^ ^ ^-2 0.05 0.05 0.05 0.2 1
