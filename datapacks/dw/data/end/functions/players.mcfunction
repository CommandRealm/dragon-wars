scoreboard players set @a ready 1
execute as @a[tag=playing] at @s run function general:team
title @a[tag=playing] times 0 20 5
tag @a[team=spectator] add playing
execute as @a[team=spectator] at @s run function general:team
team join red @a[tag=join_red,tag=playing]
team join blue @a[tag=join_blue,tag=playing]
team join yellow @a[tag=join_yellow,tag=playing]
team join green @a[tag=join_green,tag=playing]
team join gray @a[tag=join_gray,tag=playing]
scoreboard objectives setdisplay sidebar

tp @a[tag=playing] 0 66 0 0 -20
effect clear @a[tag=playing]
gamemode adventure @a[tag=playing,gamemode=!adventure]
clear @a[tag=playing]
spawnpoint @a[tag=playing] 0 66 0
scoreboard players set $game state 0
xp set @a 0 levels
execute as @e[tag=ice_capsule] at @s run fill ~ ~ ~ ~ ~ ~ air replace light_blue_stained_glass
execute as @e[tag=ice_capsule,tag=set_dirt_path] at @s run setblock ~ ~-1 ~ dirt_path
execute as @e[tag=ice_capsule,tag=set_water] at @s run setblock ~ ~ ~ water
kill @e[tag=die]
scoreboard players set $time cooldown 0
bossbar remove minecraft:refill
scoreboard objectives setdisplay list

effect give @a[tag=playing] resistance 1000000 255 true
spawnpoint @a[tag=playing] 0 66 0
tag @a[tag=playing] remove iron
tag @a[tag=playing] remove chain
tag @a[tag=playing] remove ninja
tag @a[tag=playing] remove lucky
tag @a[tag=playing] remove spartan
tag @a[tag=playing] remove gladiator
tag @a[tag=playing] remove jump_boost

scoreboard players reset @a[tag=playing] armor_delay

scoreboard players set @a elytra 0


execute as @a at @s run attribute @s generic.max_health base set 20

tag @a[tag=playing] remove playing

schedule function end:update_start_button 2t

