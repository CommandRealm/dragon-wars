# called when there is an active snowball

execute at @e[type=egg] run playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 0.05 0

execute as @e[type=egg] at @s if entity @a[distance=..5] run function item:check_egg_proximity
