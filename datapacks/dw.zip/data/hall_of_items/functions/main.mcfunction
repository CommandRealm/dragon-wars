
execute unless score $time startup_timer matches 0.. as @a[x=52,y=72,z=-14,dx=24,dy=7,dz=12] at @s anchored eyes run function hall_of_items:raycast
scoreboard players set @a[scores={crouch2=0}] crouch_time 0
scoreboard players add @a[scores={crouch2=1..}] crouch_time 1
scoreboard players set @a crouch2 0
