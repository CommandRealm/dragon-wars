particle portal -1000 62.75 -60 0.05 1 0.05 0.25 5
particle portal -1000 62.75 8 0.05 1 0.05 0.25 5
execute as @e[tag=spin] at @s positioned as @e[tag=ih_tp] run particle firework ^ ^ ^0.5 0 0 0 0 1
execute as @e[tag=ih_tp,scores={item_hall_tp=0}] at @s at @s[y=61.0,distance=..1] run scoreboard players set @s item_hall_tp 1
execute as @e[tag=ih_tp,scores={item_hall_tp=1}] at @s at @s[y=65.0,distance=..1] run scoreboard players set @s item_hall_tp 0
execute as @e[tag=ih_tp,scores={item_hall_tp=0}] at @s run tp @s ~ ~-0.05 ~
execute as @e[tag=ih_tp,scores={item_hall_tp=1}] at @s run tp @s ~ ~0.025 ~
execute as @a[x=-999.5,y=62,z=-59.5,distance=..0.75] at @s run function hall_of_items:back_to_lobby
execute as @a[x=-999.5,y=62,z=8.5,distance=..0.75] at @s run function hall_of_items:back_to_lobby
kill @e[tag=throwable_tnt,x=-1000,y=66,z=0,distance=..200]
execute as @a[x=-1000,y=66,z=0,distance=..100] at @s at @s[y=-10,distance=..10] run function hall_of_items:fall_off
execute as @a[x=-1000,y=66,z=0,distance=100..300] at @s run function hall_of_items:fall_off
execute unless score $time startup_timer matches 0.. as @a[x=-1000,y=66,z=0,distance=..200] at @s anchored eyes run function hall_of_items:raycast
execute as @e[tag=item_model] at @s run data merge entity @s {Age:-30000,PickupDelay:10000}
scoreboard players set @a[scores={crouch2=0}] crouch_time 0
scoreboard players add @a[scores={crouch2=1..}] crouch_time 1
scoreboard players set @a crouch2 0


# particles
execute as @a[x=-1000,y=66,z=0,distance=.500] at @s run particle minecraft:ash ~ ~ ~ 15 15 15 0.25 20 normal @s

execute as @a[x=-1000,y=66,z=0,distance=..500,scores={drop_ready_book=1..}] at @s run function lobby:drop_ready_book