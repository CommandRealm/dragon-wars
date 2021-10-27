# called when we should warp

#sound and particles
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.67
particle witch ~ ~1 ~ 0 0 0 0.25 35


# teleport
tp @s @e[type=marker,tag=time_warp_point,tag=temporary_tag,scores={age=60},limit=1]

# particles and sound at new location
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.67
execute at @s run particle witch ~ ~1 ~ 0 0 0 0.25 35

# killing all of our points
kill @e[type=marker,tag=temporary_tag]