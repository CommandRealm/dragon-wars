##Called to teleport us out of the parkour area.

clear @s elytra
scoreboard players reset @s elytra

##tag
tag @s remove elytra_course

##gamemode
gamemode adventure @s[gamemode=!adventure]

##tp, particle, and sounds
tp @s -23 65 8 90 10

execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
execute at @s run particle cloud ~ ~1 ~ 0.25 0.5 0.25 0.15 20 normal @s