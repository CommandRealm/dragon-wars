execute as @r at @r if score $map map_select matches -1 run function game:random_map
execute if score $number team matches 2.. run tellraw @a[scores={ready=0},team=!lobby,team=!test,team=!help,team=!bld,team=!prg,team=!srbld,team=!srprg,team=!lead,team=!true_gamer] {"text":"Due to the game beginning, you have left your team.","color":"gray"}
execute as @a[scores={ready=0},team=!lobby,team=!test,team=!help,team=!bld,team=!prg,team=!srbld,team=!srprg,team=!lead,team=!true_gamer] at @s run function general:team

clear @a[tag=playing]
tag @a[scores={ready=1..}] add playing
tag @a[tag=playing] remove test_elytra
scoreboard players set $time startup_timer -101
scoreboard players set @a ready 0
scoreboard objectives remove rounds
scoreboard objectives add rounds dummy {"text":"Round Wins","color":"dark_purple","bold":true}
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
execute if score $number team matches 1 run scoreboard players add @a[tag=playing] rounds 0
execute if score $number team matches 1 run scoreboard players add @a[tag=playing] kills 0
execute if score $number team matches 1 run scoreboard players add @a[tag=playing] treasure 0
scoreboard players set $time cooldown 0
scoreboard objectives setdisplay belowName health
scoreboard players set : treasure 5

scoreboard players set $mod tip 34

execute if score $number mode matches 1 run team modify colon color light_purple
execute if score $number mode matches 0..2 run team modify colon prefix {"text":"Criteria","color":"light_purple","bold":true}
execute if score $number mode matches 0 run gamerule keepInventory false
execute if score $number mode matches 1 run gamerule keepInventory true
execute if score $number mode matches 2 run gamerule keepInventory false
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
execute if score $map map matches 0 run tellraw @a[tag=playing] [{"text":"-----------------------------------------------------","color":"dark_purple"},{"text":"\nAftermath","color":"gold"},{"text":"\n(Built by HippehWizard, Captain_Deadpool, FalconReign, and SmallDeemo.)","color":"dark_aqua","italic":true},{"text":"\n-----------------------------------------------------","color":"dark_purple","italic":false}]
execute if score $map map matches 1 run tellraw @a[tag=playing] [{"text":"-----------------------------------------------------","color":"dark_purple"},{"text":"\nClockwork","color":"gold"},{"text":"\n(Built by Captain_Deadpool, ChipChase, TheRegularMex, HippehWizard, and FalconReign.)","color":"dark_aqua","italic":true},{"text":"\n-----------------------------------------------------","color":"dark_purple","italic":false}]
execute if score $map map matches 2 run tellraw @a[tag=playing] [{"text":"-----------------------------------------------------","color":"dark_purple"},{"text":"\nSleet","color":"gold"},{"text":"\n(Built by CheckMC, TheRangerMark, ChipChase, Bodi25, and FalconReign.)","color":"dark_aqua","italic":true},{"text":"\n-----------------------------------------------------","color":"dark_purple","italic":false}]
execute if score $map map matches 3 run tellraw @a[tag=playing] [{"text":"-----------------------------------------------------","color":"dark_purple"},{"text":"\nDesolate","color":"gold"},{"text":"\n(Built by FalconReign, Captain_Deadpool, SmallDeemo, TheRangerMark, CheckMC, and ChipChase.)","color":"dark_aqua","italic":true},{"text":"\n-----------------------------------------------------","color":"dark_purple","italic":false}]
execute if score $map map matches 4 run tellraw @a[tag=playing] [{"text":"-----------------------------------------------------","color":"dark_purple"},{"text":"\nGraviton","color":"gold"},{"text":"\n(Built by Bodi25 and TheRangerMark.)","color":"dark_aqua","italic":true},{"text":"\n-----------------------------------------------------","color":"dark_purple","italic":false}]
execute if score $map map matches 5 run tellraw @a[tag=playing] [{"text":"-----------------------------------------------------","color":"dark_purple"},{"text":"\nImmemorial","color":"gold"},{"text":"\n(Built by tinaaaa420, Bodi25, and HippehWizard.)","color":"dark_aqua","italic":true},{"text":"\n-----------------------------------------------------","color":"dark_purple","italic":false}]
execute if score $map map matches 6 run tellraw @a[tag=playing] [{"text":"-----------------------------------------------------","color":"dark_purple"},{"text":"\nMycology","color":"gold"},{"text":"\n(Built by TheRegularMex, TheTypicalMex, FalconReign, HippehWizard, CheckMC, and Captain_Deadpool.)","color":"dark_aqua","italic":true},{"text":"\n-----------------------------------------------------","color":"dark_purple","italic":false}]
execute if score $map map matches 7 run tellraw @a[tag=playing] [{"text":"-----------------------------------------------------","color":"dark_purple"},{"text":"\nSkyline","color":"gold"},{"text":"\n(Built by TheRegularMex, HippehWizard, Captain_Deadpool, TheTypicalMex, CheckMC, FalconReign, and SmallDeemo.)","color":"dark_aqua","italic":true},{"text":"\n-----------------------------------------------------","color":"dark_purple","italic":false}]
execute if score $map map matches 8 run tellraw @a[tag=playing] [{"text":"-----------------------------------------------------","color":"dark_purple"},{"text":"\nDynasty","color":"gold"},{"text":"\n(Built by SmallDeemo, II_Owen_II, TheRegularMex, Captain_Deadpool, HippehWizard, FalconReign, TheTypicalMex, tinaaaa420, and ChipChase.)","color":"dark_aqua","italic":true},{"text":"\n-----------------------------------------------------","color":"dark_purple","italic":false}]
execute if score $map map matches 9 run tellraw @a[tag=playing] [{"text":"-----------------------------------------------------","color":"dark_purple"},{"text":"\nAquatic","color":"gold"},{"text":"\n(Built by Bodi25, CheckMC, HippehWizard, and FalconReign.)","color":"dark_aqua","italic":true},{"text":"\n-----------------------------------------------------","color":"dark_purple","italic":false}]
execute if score $map map matches 10 run tellraw @a[tag=playing] [{"text":"-----------------------------------------------------","color":"dark_purple"},{"text":"\nHelios","color":"gold"},{"text":"\n(Built by ChipChase, TheRegularMex, Bodi25, J70, FalconReign, HippehWizard, and CheckMC.)","color":"dark_aqua","italic":true},{"text":"\n-----------------------------------------------------","color":"dark_purple","italic":false}]
execute if score $map map matches 11 run tellraw @a[tag=playing] [{"text":"-----------------------------------------------------","color":"dark_purple"},{"text":"\nScorched","color":"gold"},{"text":"\n(Built by J70, HippehWizard, FalconReign, CheckMC, ChipChase, TheRegularMex, and Calverin.)","color":"dark_aqua","italic":true},{"text":"\n-----------------------------------------------------","color":"dark_purple","italic":false}]
execute if score $map map matches 12 run tellraw @a[tag=playing] [{"text":"-----------------------------------------------------","color":"dark_purple"},{"text":"\nExtraterrestrial","color":"gold"},{"text":"\n(Built by FalconReign.)","color":"dark_aqua","italic":true},{"text":"\n-----------------------------------------------------","color":"dark_purple","italic":false}]


execute if score $number team matches 2.. run tellraw @a[tag=playing,team=red] [{"text":"You are on RED TEAM!","color":"dark_red"},{"text":" Your team: ","color":"dark_red"},{"selector":"@a[team=red]"}]
execute if score $number team matches 2.. run tellraw @a[tag=playing,team=blue] [{"text":"You are on BLUE TEAM!","color":"dark_blue"},{"text":" Your team: ","color":"dark_blue"},{"selector":"@a[team=blue]"}]
execute if score $number team matches 2.. run tellraw @a[tag=playing,team=yellow] [{"text":"You are on YELLOW TEAM!","color":"yellow"},{"text":" Your team: ","color":"yellow"},{"selector":"@a[team=yellow]"}]
execute if score $number team matches 2.. run tellraw @a[tag=playing,team=green] [{"text":"You are on GREEN TEAM!","color":"green"},{"text":" Your team: ","color":"green"},{"selector":"@a[team=green]"}]
execute if score $number team matches 2.. run tellraw @a[tag=playing,team=gray] [{"text":"You are on GRAY TEAM!","color":"dark_gray"},{"text":" Your team: ","color":"dark_gray"},{"selector":"@a[team=gray]"}]
scoreboard players add @a[tag=playing] stats_played 1
bossbar set minecraft:lobby players @a[tag=!playing]
playsound minecraft:entity.enderman.teleport master @a[x=-1000,y=66,z=0,distance=..500,tag=!playing] 0 66 0 100000 1
tellraw @a[x=-1000,y=66,z=0,distance=..500,tag=!playing] {"text":"Please wait here while the game is in progress . . . ","color":"light_purple"}
tp @a[x=-1000,y=66,z=0,distance=..500,tag=!playing] 0 66 0 0 -20
scoreboard players set @a[tag=!playing] gliding 0
kill @e[type=ender_dragon]