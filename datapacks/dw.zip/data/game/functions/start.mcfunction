data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomNameVisible set value 0b
setblock 0 68 7 air

tag @a remove on_team
tag @a remove on_red_team
tag @a remove on_blue_team
tag @a remove on_yellow_team
tag @a remove on_green_team
tag @a remove on_gray_team

execute as @a[tag=playing,team=teams_red] at @s run function game:team_distribution/join_red
execute as @a[tag=playing,team=teams_blue] at @s run function game:team_distribution/join_blue
execute as @a[tag=playing,team=teams_yellow] at @s run function game:team_distribution/join_yellow
execute as @a[tag=playing,team=teams_green] at @s run function game:team_distribution/join_green
execute as @a[tag=playing,team=teams_gray] at @s run function game:team_distribution/join_gray
execute if score $teams settings matches 2.. if entity @a[tag=playing,team=red] unless entity @a[tag=playing,team=blue] unless entity @a[tag=playing,team=yellow] unless entity @a[tag=playing,team=green] unless entity @a[tag=playing,tag=on_gray_team] as @r[tag=playing,team=red] at @s run function game:team_distribution/join_blue
execute if score $teams settings matches 2.. if entity @a[tag=playing,team=blue] unless entity @a[tag=playing,team=red] unless entity @a[tag=playing,team=yellow] unless entity @a[tag=playing,team=green] unless entity @a[tag=playing,tag=on_gray_team] as @r[tag=playing,team=blue] at @s run function game:team_distribution/join_red

execute if score $teams settings matches 2.. if entity @a[tag=playing,tag=!on_team] run function game:team_distribution/distribute


execute as @r at @r if score $map map_select matches -2 run function game:random_map
execute if score $number team matches 2.. run tellraw @a[scores={ready=0},team=!lobby,team=!test,team=!help,team=!bld,team=!prg,team=!srbld,team=!srprg,team=!lead,team=!true_gamer] [{"text":"- ","color":"dark_purple"},{"text":"Due to the game beginning, you have left your team.","color":"gray"}]
execute as @a[scores={ready=0},team=!lobby,team=!test,team=!help,team=!bld,team=!prg,team=!srbld,team=!srprg,team=!lead,team=!true_gamer] at @s run function general:team

clear @a[tag=playing]
tag @a[scores={ready=1..}] add playing
tag @a[tag=playing] remove test_elytra
scoreboard players set $time startup_timer -101
scoreboard players set @a ready 0
scoreboard objectives remove rounds
scoreboard objectives add rounds dummy [{"text":"Round ","color":"dark_purple","bold":true},{"text":"Wins","color":"gold"}]
scoreboard objectives remove fake_round
scoreboard objectives add fake_round dummy
scoreboard objectives remove kills
execute if score $number team matches 1 run scoreboard objectives add kills playerKillCount {"text":"Kills","color":"dark_purple","bold":true}
execute if score $number team matches 2.. run scoreboard objectives add kills dummy {"text":"Kills","color":"dark_purple","bold":true}
scoreboard objectives remove check_kills
scoreboard objectives add check_kills dummy
scoreboard players operation $number check_kills = $number set_kills
scoreboard players operation : kills = $number set_kills
scoreboard players operation : rounds = $round round_criteria
scoreboard objectives remove treasure
scoreboard objectives add treasure dummy {"text":"Treasure","color":"dark_purple","bold":true}
function game:game_start

scoreboard objectives remove comp_wins
scoreboard objectives add comp_wins dummy [{"text":"Competitive ","color":"dark_purple","bold":true},{"text":"Wins","color":"gold"}]

execute if score $number team matches 1 run scoreboard players add @a[tag=playing] rounds 0
execute if score $number team matches 1 run scoreboard players add @a[tag=playing] kills 0
execute if score $number team matches 1 run scoreboard players add @a[tag=playing] treasure 0
scoreboard players set $time cooldown 0
scoreboard objectives setdisplay belowName health
scoreboard players set : treasure 5

scoreboard players set $mod tip 34

execute if score $number mode matches 1 run team modify colon color light_purple
execute unless score $number mode matches 3 run team modify colon prefix {"text":"Criteria","color":"light_purple","bold":true}
execute if score $number mode matches 0 run gamerule keepInventory false
execute if score $number mode matches 1 run gamerule keepInventory true
execute if score $number mode matches 2 run gamerule keepInventory false
execute if score $number mode matches 3 run gamerule keepInventory false
execute if score $number set_time matches 3 run function options:random_time
scoreboard players reset @a tab_kills
scoreboard objectives setdisplay list tab_kills



execute if score $number mode matches 0 if score $number team matches 2.. if entity @a[team=red,tag=playing] run scoreboard players add Red: rounds 0
execute if score $number mode matches 0 if score $number team matches 2.. if entity @a[team=blue,tag=playing] run scoreboard players add Blue: rounds 0
execute if score $number mode matches 0 if score $number team matches 2.. if entity @a[team=yellow,tag=playing] run scoreboard players add Yellow: rounds 0
execute if score $number mode matches 0 if score $number team matches 2.. if entity @a[team=green,tag=playing] run scoreboard players add Green: rounds 0
execute if score $number mode matches 0 if score $number team matches 2.. if entity @a[team=gray,tag=playing] run scoreboard players add Gray: rounds 0

execute if score $number mode matches 1 if score $number team matches 2.. if entity @a[team=red,tag=playing] run scoreboard players add Red: kills 0
execute if score $number mode matches 1 if score $number team matches 2.. if entity @a[team=blue,tag=playing] run scoreboard players add Blue: kills 0
execute if score $number mode matches 1 if score $number team matches 2.. if entity @a[team=yellow,tag=playing] run scoreboard players add Yellow: kills 0
execute if score $number mode matches 1 if score $number team matches 2.. if entity @a[team=green,tag=playing] run scoreboard players add Green: kills 0
execute if score $number mode matches 1 if score $number team matches 2.. if entity @a[team=gray,tag=playing] run scoreboard players add Gray: kills 0

execute if score $number mode matches 3 if score $number team matches 2.. if entity @a[team=red,tag=playing] run scoreboard players add Red: rounds 0
execute if score $number mode matches 3 if score $number team matches 2.. if entity @a[team=blue,tag=playing] run scoreboard players add Blue: rounds 0
tag @a remove join_red
tag @a remove join_blue
tag @a remove join_yellow
tag @a remove join_green
tag @a remove join_gray
tag @a[tag=playing,team=red] add join_red
tag @a[tag=playing,team=blue] add join_blue
tag @a[tag=playing,team=yellow] add join_yellow
tag @a[tag=playing,team=green] add join_green
tag @a[tag=playing,team=gray] add join_gray
scoreboard objectives remove team_kill
scoreboard objectives add team_kill playerKillCount
scoreboard players set BlocksInPlay: treasure 0
execute unless score $number mode matches 3 run function game:map_credits

execute if score $number team matches 2.. run tellraw @a[tag=playing,team=red] [{"text":"You are on ","color":"gray"},{"text":"RED TEAM!","color":"dark_red"},{"text":" Your team: ","color":"gray"},{"selector":"@a[team=red]"}]
execute if score $number team matches 2.. run tellraw @a[tag=playing,team=blue] [{"text":"You are on ","color":"gray"},{"text":"BLUE TEAM!","color":"dark_blue"},{"text":" Your team: ","color":"gray"},{"selector":"@a[team=blue]"}]
execute if score $number team matches 2.. run tellraw @a[tag=playing,team=yellow] [{"text":"You are on ","color":"gray"},{"text":"YELLOW TEAM!","color":"yellow"},{"text":" Your team: ","color":"gray"},{"selector":"@a[team=yellow]"}]
execute if score $number team matches 2.. run tellraw @a[tag=playing,team=green] [{"text":"You are on ","color":"gray"},{"text":"GREEN TEAM!","color":"green"},{"text":" Your team: ","color":"gray"},{"selector":"@a[team=green]"}]
execute if score $number team matches 2.. run tellraw @a[tag=playing,team=gray] [{"text":"You are on ","color":"gray"},{"text":"GRAY TEAM!","color":"dark_gray"},{"text":" Your team: ","color":"gray"},{"selector":"@a[team=gray]"}]
scoreboard players add @a[tag=playing] stats_played 1
bossbar set minecraft:lobby players @a[tag=!playing]
playsound minecraft:entity.enderman.teleport master @a[x=-1000,y=66,z=0,distance=..500,tag=!playing] 0 66 0 100000 1
tellraw @a[x=-1000,y=66,z=0,distance=..500,tag=!playing] ["",{"text":"🗡 ","color":"light_purple","bold":true},{"text":"Please wait here while the game is in progress . . . ","color":"light_purple"}]
tp @a[x=-1000,y=66,z=0,distance=..500,tag=!playing] 0 66 0 0 -20
scoreboard players set @a[tag=!playing] gliding 0
kill @e[type=ender_dragon]


scoreboard players set $time competitive 0


# id
scoreboard objectives remove id
scoreboard objectives add id dummy
scoreboard players set $id id 0

tag @a[tag=playing] remove elytra_course
tag @a[tag=playing] remove elytra_course_pad


# if this is comp
execute if score $number mode matches 3 run function game:competitive/lock_item_hall