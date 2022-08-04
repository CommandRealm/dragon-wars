##Main parkour function.

##Adding parkour time
scoreboard players add @a[tag=elytra_course] parkour_time 1

##Calculating time.
execute as @a[tag=elytra_course] at @s run function lobby:parkour/calculate_time


##Giving the player the items.
execute as @a[tag=elytra_course] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:tipped_arrow",Count:1b}]}] run function lobby:parkour/check_arrow

##If a player changes gamemode
execute as @a[tag=elytra_course,gamemode=!adventure] at @s run function lobby:parkour/leave

##If a player goes to far away
execute as @a[tag=elytra_course,gamemode=adventure,x=-98,y=38,z=48,distance=130..] at @s run function lobby:parkour/leave_parkour_area

##Clearing ender pearls
clear @a[tag=elytra_course] ender_pearl


# ring types
execute as @e[type=marker,tag=we_circle] at @s positioned ~ ~-3 ~-3 as @a[tag=elytra_course,dx=1,dy=6,dz=5] run function lobby:parkour/check_player_enter_ring
execute as @e[type=marker,tag=ns_circle] at @s positioned ~-3 ~-3 ~ as @a[tag=elytra_course,dx=5,dy=6,dz=1] run function lobby:parkour/check_player_enter_ring

# special rings
scoreboard players set $ring_check parkour_time 0
execute as @e[type=marker,tag=spec_circle] at @s if entity @a[tag=elytra_course,distance=..15] run scoreboard players set $ring_check parkour_time 1
execute if score $ring_check parkour_time matches 1 run function lobby:parkour/check_special_rings


execute at @a[tag=elytra_course,tag=!playing] run kill @e[type=armor_stand,tag=throwable_tnt,scores={tnt_time=50..},distance=..10]
##Finishing the parkour.
execute as @a[x=-86,y=-51,z=-26,dx=33,dz=2,dy=11,tag=elytra_course,scores={rings_left=..0},tag=elytra_course] at @s run function lobby:parkour/finish

# failing the parkour
execute as @a[tag=elytra_course,nbt={OnGround:1b},scores={parkour_time=20..}] at @s run function lobby:parkour/touch_ground

# sound
execute if entity @a[tag=elytra_course,scores={ring_sound=1..}] run function lobby:parkour/sound/main

clear @a[tag=elytra_course,scores={damage=1..}] elytra


execute store result score $ticks parkour_time run worldborder get
execute if score $ticks parkour_time matches 59000000.. run function lobby:parkour/set_worldborder