# called to check the time warp usage

# finding our time warp points.
tag @s add temporary_tag
execute as @e[type=marker,tag=time_warp_point] at @s if score @s id = @p[tag=temporary_tag] id run tag @s add temporary_tag

# if there is no match, give error message.
execute unless entity @e[type=marker,tag=time_warp_point,tag=temporary_tag,scores={age=60}] run function item:time_warp_error

# if there is a match, warp to it.
execute if entity @e[type=marker,tag=time_warp_point,tag=temporary_tag,scores={age=60}] run function item:time_warp



# removing tags
tag @e[type=marker,tag=time_warp_point] remove temporary_tag
tag @s remove temporary_tag

# resetting score
scoreboard players reset @s drop_clock

# killing clock
kill @e[type=item,nbt={Item:{id:"minecraft:clock"}}]
