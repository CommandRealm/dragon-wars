# called when there is active fake strength
scoreboard players remove @a[scores={fake_strength=1..}] fake_strength 1

# particles
execute at @a[scores={fake_strength=1..}] run particle dust 0.541 0.18 0.035 1 ~ ~ ~ 0.25 0.25 0.25 0.2 10

# when the timer runs out
execute as @a[scores={fake_strength=0}] at @s run function item:fake_strength_over