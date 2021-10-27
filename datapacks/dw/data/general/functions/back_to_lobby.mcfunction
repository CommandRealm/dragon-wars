scoreboard players enable @s back_to_lobby
scoreboard players set @s back_to_lobby 0
tellraw @s {"text":"You have returned to the lobby.","color":"gray"}
tp @s 0 67 0 0 -20
function general:team
scoreboard players set @s leave 0
tag @s remove playing
effect clear @s
effect give @s resistance 1000000 255 true
spawnpoint @s 0 66 0
tag @s remove test_elytra
tag @s remove iron
tag @s remove chain
tag @s remove ninja
tag @s remove lucky
tag @s remove spartan
tag @s remove gladiator
tag @a remove jump_boost
scoreboard players set @s elytra 0
scoreboard players enable @s select_team
execute unless score $game state matches 1.. run function lobby:get_book
tag @s remove join_red
tag @s remove join_blue
tag @s remove join_yellow
tag @s remove join_green
tag @s remove join_gray
playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 100000 1
gamemode adventure @s