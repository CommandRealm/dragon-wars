scoreboard players reset @s drop_w_skull
kill @e[type=item,nbt={Item:{id:"minecraft:wither_skeleton_skull"}},sort=nearest,limit=1,tag=!unusable]
summon wither_skull ^ ^ ^.1 {Tags:["get_direction","die","get_motion"]}
execute store result score @s direction_x run data get entity @s Pos[0] 1000000
execute store result score @s direction_y run data get entity @s Pos[1] 1000000
execute store result score @s direction_z run data get entity @s Pos[2] 1000000

execute as @e[type=wither_skull,tag=get_direction,sort=nearest,limit=1] at @s store result score @s direction_x run data get entity @s Pos[0] 1000000
execute as @e[type=wither_skull,tag=get_direction,sort=nearest,limit=1] at @s store result score @s direction_y run data get entity @s Pos[1] 1000000
execute as @e[type=wither_skull,tag=get_direction,sort=nearest,limit=1] at @s store result score @s direction_z run data get entity @s Pos[2] 1000000

scoreboard players operation @e[type=wither_skull,tag=get_direction,sort=nearest,limit=1] direction_x -= @s direction_x
scoreboard players operation @e[type=wither_skull,tag=get_direction,sort=nearest,limit=1] direction_y -= @s direction_y
scoreboard players operation @e[type=wither_skull,tag=get_direction,sort=nearest,limit=1] direction_z -= @s direction_z
execute anchored eyes positioned ^ ^ ^.25 positioned ~ ~-.015 ~ run tp @e[tag=get_motion,type=wither_skull,sort=nearest,limit=1] ~ ~ ~ facing entity @s
execute as @e[type=wither_skull,tag=get_motion] store result entity @s power[0] double 0.00000065 run scoreboard players get @e[type=wither_skull,tag=get_direction,sort=nearest,limit=1] direction_x
execute as @e[type=wither_skull,tag=get_motion] store result entity @s power[1] double 0.00000065 run scoreboard players get @e[type=wither_skull,tag=get_direction,sort=nearest,limit=1] direction_y
execute as @e[type=wither_skull,tag=get_motion] store result entity @s power[2] double 0.00000065 run scoreboard players get @e[type=wither_skull,tag=get_direction,sort=nearest,limit=1] direction_z
execute as @e[type=wither_skull,tag=get_motion] store result entity @s Motion[0] double 0.0000085 run scoreboard players get @e[type=wither_skull,tag=get_direction,sort=nearest,limit=1] direction_x
execute as @e[type=wither_skull,tag=get_motion] store result entity @s Motion[1] double 0.0000085 run scoreboard players get @e[type=wither_skull,tag=get_direction,sort=nearest,limit=1] direction_y
execute as @e[type=wither_skull,tag=get_motion] store result entity @s Motion[2] double 0.0000085 run scoreboard players get @e[type=wither_skull,tag=get_direction,sort=nearest,limit=1] direction_z
tag @e[type=wither_skull,tag=get_motion] remove get_motion
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0.85