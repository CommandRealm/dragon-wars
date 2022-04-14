tag @s remove i_move
gamemode adventure @s
tp @s 0 66 0 0 -20

clear @s
tag @s add i_move
execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~ 1 2
scoreboard players set @s i_walk 0
scoreboard players set @s i_sprint 0
scoreboard players set @s i_crouch 0
scoreboard players set @s intro -100
title @s times 0 70 10
scoreboard players set @s ready 1
scoreboard players set @s leave 0
tag @s remove playing
effect clear @s
scoreboard players enable @s auto-ready
scoreboard players add @s sword 0
spawnpoint @s 0 66 0
tag @s remove test_elytra
tag @s remove iron
tag @s remove chain
tag @s remove ninja
tag @s remove lucky
tag @s remove spartan
tag @s remove gladiator
tag @s remove jump_boost
scoreboard players set @s elytra 0
scoreboard players enable @s select_team
execute unless score $game state matches 1.. run function lobby:get_book
tag @s remove join_red
tag @s remove join_blue
tag @s remove join_yellow
tag @s remove join_green
tag @s remove join_gray
scoreboard players enable @s back_to_lobby
scoreboard players enable @s description
xp set @s 0 levels
tellraw @s [{"text":"▶ ","color":"dark_green","bold":true},{"text":"Welcome to Dragon Wars!","color":"light_purple","bold":false},{"text":"\n▶ ","color":"dark_green","bold":true},{"text":"The goal of the game is to kill other players.","color":"light_purple","bold":false},{"text":"\n▶ ","color":"dark_green","bold":true},{"text":"Chests give you useful loot, and the purpur platforms give you rockets!","color":"light_purple","bold":false},{"text":"\n▶ ","color":"dark_green","bold":true},{"text":"Taking damage makes you lose your elytra until you touch the ground.","color":"light_purple","bold":false},{"text":"\n▶ ","color":"dark_green","bold":true},{"text":"Fall damage is disabled; however, kinetic energy damage is not disabled. ","color":"light_purple","bold":false},{"text":"\n▶ ","color":"dark_green","bold":true},{"text":"Good luck dragon!","color":"light_purple","bold":false}]
scoreboard players add @a stats_wins 0
scoreboard players add @a stats_played 0
scoreboard players add @a stats_kills 0
scoreboard players add @a stats_deaths 0
scoreboard players add @a stats_kd 0
scoreboard players add @a stats_wins 0
scoreboard players add @a stats_flown 0
scoreboard players add @s resetting 1
execute if entity @s[scores={resetting=1}] run function general:reset
scoreboard players reset @s rounds
scoreboard players reset @s kills
scoreboard players reset @s treasure
scoreboard players set @s tnt_cooldown 0
tag @s remove won_treasure_mode

function general:team

tag @s remove elytra_course
tag @s remove elytra_course_pad
tag @s remove temp_victory