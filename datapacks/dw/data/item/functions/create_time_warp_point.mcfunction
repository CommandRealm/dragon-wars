# called to create a time warp point

summon marker ~ ~ ~ {Tags:["die","time_warp_point","new"]}

tp @e[type=marker,tag=new] @s

# copying id
scoreboard players operation @e[type=marker,tag=new] id = @s id

# tag 
tag @s add temporary_tag

# adding age score of our own warp points
execute as @e[type=marker,tag=time_warp_point] if score @s id = @p[tag=temporary_tag] id run scoreboard players add @s age 1

# killing warp points over 60
kill @e[type=marker,tag=time_warp_point,scores={age=61..}]

# removing tags
tag @e[type=marker,tag=time_warp_point] remove new
tag @s remove temporary_tag