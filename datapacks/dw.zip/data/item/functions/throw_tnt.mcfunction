execute store result score @s tnt_mot_x run data get entity @s Motion[0] 100
execute store result score @s tnt_mot_y run data get entity @s Motion[1] 100
execute store result score @s tnt_mot_z run data get entity @s Motion[2] 100
summon armor_stand ~ ~-1 ~ {ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Invisible:1b,Small:0b,Tags:["throwable_tnt","die","tnt_get_motion"],Pose:{Head:[0.0f,0.0f,0.0f],RightLeg:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f]},NoBasePlate:1b}
execute store result entity @e[tag=tnt_get_motion,sort=nearest,limit=1] Motion[0] double 0.08 run scoreboard players get @s tnt_mot_x
execute store result entity @e[tag=tnt_get_motion,sort=nearest,limit=1] Motion[1] double 0.06 run scoreboard players get @s tnt_mot_y
execute store result entity @e[tag=tnt_get_motion,sort=nearest,limit=1] Motion[2] double 0.08 run scoreboard players get @s tnt_mot_z
data modify entity @e[tag=tnt_get_motion,sort=nearest,limit=1] Rotation[0] set from entity @p[tag=playing,gamemode=adventure] Rotation[0]

execute as @e[tag=tnt_get_motion] at @s store result score @s tnt_rotation run data get entity @s Rotation[0] 1
tag @e[tag=tnt_get_motion,distance=..1,sort=nearest,limit=1] remove tnt_get_motion

playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 0.9
kill @s