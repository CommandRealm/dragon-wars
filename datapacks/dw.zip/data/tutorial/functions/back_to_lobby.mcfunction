# clearing self but reequipping elytra if necessary
clear @s
tag @s[tag=test_elytra] remove test_elytra

tp @s 0 66 0 0 -20

advancement grant @s only advancements:custom/complete_tutorial

execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
execute at @s run particle cloud ~ ~1 ~ 0.25 0.5 0.25 0.15 20 normal @s
