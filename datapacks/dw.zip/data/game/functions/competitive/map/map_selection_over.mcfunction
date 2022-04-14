# called when the map selection phase is over

# destroying the buttons
setblock 57 78 14 air destroy
setblock 60 78 15 air destroy
setblock 61 78 18 air destroy
setblock 60 78 21 air destroy
setblock 57 78 22 air destroy
setblock 54 78 21 air destroy
setblock 53 78 18 air destroy

kill @e[type=area_effect_cloud,tag=comp_nameplate]

# setting map score
execute if score $map competitive matches 0 run scoreboard players set $map map 2
execute if score $map competitive matches 1 run scoreboard players set $map map 3
execute if score $map competitive matches 2 run scoreboard players set $map map 1
execute if score $map competitive matches 3 run scoreboard players set $map map -1
execute if score $map competitive matches 4 run scoreboard players set $map map 4
execute if score $map competitive matches 5 run scoreboard players set $map map 14
execute if score $map competitive matches 6 run scoreboard players set $map map 12

#sound
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

schedule function game:map_credits 10t

# starting the fight
schedule function game:game_start 50t
scoreboard players set $time competitive 2050