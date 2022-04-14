# called when we use a reflector

# identifying projectiles
tag @e[type=arrow,distance=..8] add projectile
tag @e[type=trident,distance=..8] add projectile
tag @e[type=item,nbt={OnGround:0b},distance=..8] add projectile
tag @e[type=egg,distance=..8] add projectile
tag @e[type=snowball,distance=..8] add projectile
tag @e[type=potion,distance=..8] add projectile
tag @e[type=area_effect_cloud,tag=laser_beam,distance=..8] add projectile
tag @e[type=area_effect_cloud,tag=laser_beam,distance=..8] add rotate_projectile
tag @e[type=armor_stand,tag=thrown_tnt,distance=..8] add projectile
tag @e[type=small_fireball,distance=..8] add projectile

# change snowball and egg ids
scoreboard players operation @e[type=egg,distance=..8] id = @s id
scoreboard players operation @e[type=snowball,distance=..8] id = @s id

# summoning new arrows ( so you can hit yourself)
execute as @e[type=arrow,tag=projectile] at @s run function item:summon_new_arrow



# reversing motion
execute as @e[tag=projectile,tag=!rotate_projectile] at @s run function item:reverse_projectile_motion

# rotating those which are necessary
execute as @e[tag=projectile] at @s run function item:rotate_projectile


kill @e[type=item,nbt={Item:{id:"minecraft:diamond"}},sort=nearest,limit=1]

# particle
particle dust 0.302 0.678 0.855 1 ~ ~ ~ 5 5 5 1 200
particle dust 0.345 0.925 1 1 ~ ~ ~ 5 5 5 0 50
particle dust 0.302 0.337 0.855 1 ~ ~ ~ 5 5 5 1 50

# sound
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.5 2

# score reset
scoreboard players reset @s drop_reflector