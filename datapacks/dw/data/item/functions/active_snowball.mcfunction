# called when there is an active snowball

execute as @e[type=snowball] at @s if entity @a[distance=..3] run function item:check_snowball_proximity

# particle
execute at @e[type=snowball] run particle enchanted_hit ~ ~ ~ 0 0 0 0 1