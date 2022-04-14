# main tutorial function

execute as @e[type=area_effect_cloud,tag=lobby_firework,x=-1000,y=66,z=0,distance=..500] at @s if entity @a[distance=..7,tag=!playing,gamemode=!spectator] unless entity @e[type=area_effect_cloud,tag=no_rocket_spawn,distance=..1] run function lobby:summon_firework
execute as @a[scores={l_firework=1..},tag=!playing,gamemode=adventure] at @s run function lobby:drop_firework

execute unless entity @a[x=0,y=66,z=0,distance=..500] if entity @e[type=area_effect_cloud,tag=lobby_chest,scores={lobby_refill=1..},x=-1000,y=66,z=0,distance=..500] run function lobby:check_chest

scoreboard players remove $time tutorial 1
execute if score $time tutorial matches ..0 run function tutorial:change_map


# dragons
execute unless entity @e[type=wither_skeleton,tag=tutorial_dragon_1] run function tutorial:summon_dragon_1
execute unless entity @e[type=wither_skeleton,tag=tutorial_dragon_2] run function tutorial:summon_dragon_2
execute unless entity @e[type=skeleton,tag=tutorial_dragon_3] run function tutorial:summon_dragon_3


execute as @e[type=skeleton,tag=tutorial_dragon_3] at @s run data modify entity @s Fire set value 100s

# falling
execute as @e[type=wither_skeleton,tag=tutorial_dragon,nbt={HurtTime:10s}] at @s run function tutorial:dragon_damage

# elytra cooldown
execute if score $elytra tutorial matches -25..25 if entity @e[type=wither_skeleton,tag=tutorial_dragon_2,nbt={OnGround:1b}] run scoreboard players remove $elytra tutorial 1
execute if score $elytra tutorial matches 0 if entity @e[type=wither_skeleton,tag=tutorial_dragon_2,nbt={OnGround:1b}] run function tutorial:replace_elytra
execute if score $elytra tutorial matches -25 if entity @e[type=wither_skeleton,tag=tutorial_dragon_2,nbt={OnGround:1b}] run tp @e[type=wither_skeleton,tag=tutorial_dragon_2] 0 -100 0

# particles for end portal
particle dragon_breath -1000 97.75 198 1 0 1 0.01 10
execute as @a[x=-1002,y=98,z=196,dx=3,dy=0,dz=3,nbt={OnGround:1b}] at @s run function tutorial:back_to_lobby

execute as @a[tag=!playing,gamemode=adventure,x=-1000,y=66,z=0,distance=..500] at @s at @s[y=-5,distance=..5] run function tutorial:fall_off

execute as @a[x=-1000,y=66,z=0,distance=..500,scores={drop_ready_book=1..}] at @s run function lobby:drop_ready_book

effect give @a[tag=!playing,gamemode=adventure,x=-1000,y=66,z=0,distance=..500] resistance 1 255 true