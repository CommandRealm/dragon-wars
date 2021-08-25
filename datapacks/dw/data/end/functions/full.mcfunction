execute as @a[tag=playing,team=!spectator] at @s run function cosmetic:lf_cosmetic
tag @a[team=spectator] add playing
scoreboard objectives add temp_wins dummy
execute as @a[tag=playing] at @s run scoreboard players operation @s temp_wins = @s stats_wins
execute if score $number team matches 1 if score $number mode matches 0 run tellraw @a[tag=playing] [{"selector":"@a[scores={fake_round=0..},tag=playing]"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"dark_purple","bold":true}]
execute if score $number team matches 1 if score $number mode matches 1 run tellraw @a[tag=playing] [{"selector":"@a[scores={check_kills=0..},tag=playing]"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"dark_purple","bold":true}]
execute if score $number team matches 1 if score $number mode matches 2 run tellraw @a[tag=playing] [{"selector":"@a[tag=won_treasure_mode]"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"dark_purple","bold":true}]
execute if score $number team matches 1 if score $number mode matches 0 run scoreboard players add @a[scores={fake_round=0..},tag=playing] stats_wins 1
execute if score $number team matches 1 if score $number mode matches 1 run scoreboard players add @a[scores={check_kills=0..},tag=playing] stats_wins 1
execute if score $number team matches 1 if score $number mode matches 2 run scoreboard players add @a[tag=won_treasure_mode] stats_wins 1

execute if score $number team matches 2.. if score $number mode matches 0 if score Red: fake_round matches 0.. run tellraw @a[tag=playing] [{"text":"Red Team","color":"dark_red"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"gold","bold":true}]
execute if score $number team matches 2.. if score $number mode matches 0 if score Blue: fake_round matches 0.. run tellraw @a[tag=playing] [{"text":"Blue Team","color":"dark_blue"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"gold","bold":true}]
execute if score $number team matches 2.. if score $number mode matches 0 if score Yellow: fake_round matches 0.. run tellraw @a[tag=playing] [{"text":"Yellow Team","color":"yellow"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"gold","bold":true}]
execute if score $number team matches 2.. if score $number mode matches 0 if score Green: fake_round matches 0.. run tellraw @a[tag=playing] [{"text":"Green Team","color":"green"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"gold","bold":true}]
execute if score $number team matches 2.. if score $number mode matches 0 if score Gray: fake_round matches 0.. run tellraw @a[tag=playing] [{"text":"Gray Team","color":"dark_gray"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"gold","bold":true}]
execute if score $number team matches 2.. if score $number mode matches 0 if score Red: fake_round matches 0.. run scoreboard players add @a[team=red,tag=playing] stats_wins 1
execute if score $number team matches 2.. if score $number mode matches 0 if score Blue: fake_round matches 0.. run scoreboard players add @a[team=blue,tag=playing] stats_wins 1
execute if score $number team matches 2.. if score $number mode matches 0 if score Yellow: fake_round matches 0.. run scoreboard players add @a[team=yellow,tag=playing] stats_wins 1
execute if score $number team matches 2.. if score $number mode matches 0 if score Green: fake_round matches 0.. run scoreboard players add @a[team=green,tag=playing] stats_wins 1
execute if score $number team matches 2.. if score $number mode matches 0 if score Gray: fake_round matches 0.. run scoreboard players add @a[team=gray,tag=playing] stats_wins 1

execute if score $number team matches 2.. if score $number mode matches 1 if score Red: check_kills matches 0.. run tellraw @a[tag=playing] [{"text":"Red Team","color":"dark_red"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"gold","bold":true}]
execute if score $number team matches 2.. if score $number mode matches 1 if score Blue: check_kills matches 0.. run tellraw @a[tag=playing] [{"text":"Blue Team","color":"dark_blue"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"gold","bold":true}]
execute if score $number team matches 2.. if score $number mode matches 1 if score Yellow: check_kills matches 0.. run tellraw @a[tag=playing] [{"text":"Yellow Team","color":"yellow"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"gold","bold":true}]
execute if score $number team matches 2.. if score $number mode matches 1 if score Green: check_kills matches 0.. run tellraw @a[tag=playing] [{"text":"Green Team","color":"green"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"gold","bold":true}]
execute if score $number team matches 2.. if score $number mode matches 1 if score Gray: check_kills matches 0.. run tellraw @a[tag=playing] [{"text":"Gray Team","color":"dark_gray"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"gold","bold":true}]

execute if score $number team matches 2.. if score $number mode matches 1 if score Red: check_kills matches 0.. run scoreboard players add @a[team=red,tag=playing] stats_wins 1
execute if score $number team matches 2.. if score $number mode matches 1 if score Blue: check_kills matches 0.. run scoreboard players add @a[team=blue,tag=playing] stats_wins 1
execute if score $number team matches 2.. if score $number mode matches 1 if score Yellow: check_kills matches 0.. run scoreboard players add @a[team=yellow,tag=playing] stats_wins 1
execute if score $number team matches 2.. if score $number mode matches 1 if score Green: check_kills matches 0.. run scoreboard players add @a[team=green,tag=playing] stats_wins 1
execute if score $number team matches 2.. if score $number mode matches 1 if score Gray: check_kills matches 0.. run scoreboard players add @a[team=gray,tag=playing] stats_wins 1

execute if score $number team matches 2.. if score $number mode matches 2 if entity @a[tag=playing,tag=won_treasure_mode,team=red] run tellraw @a[tag=playing] [{"text":"Red Team","color":"dark_red"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"gold","bold":true}]
execute if score $number team matches 2.. if score $number mode matches 2 if entity @a[tag=playing,tag=won_treasure_mode,team=blue] run tellraw @a[tag=playing] [{"text":"Blue Team","color":"dark_blue"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"gold","bold":true}]
execute if score $number team matches 2.. if score $number mode matches 2 if entity @a[tag=playing,tag=won_treasure_mode,team=yellow] run tellraw @a[tag=playing] [{"text":"Yellow Team","color":"yellow"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"gold","bold":true}]
execute if score $number team matches 2.. if score $number mode matches 2 if entity @a[tag=playing,tag=won_treasure_mode,team=green] run tellraw @a[tag=playing] [{"text":"Green Team","color":"green"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"gold","bold":true}]
execute if score $number team matches 2.. if score $number mode matches 2 if entity @a[tag=playing,tag=won_treasure_mode,team=gray] run tellraw @a[tag=playing] [{"text":"Gray Team","color":"dark_gray"},{"text":" has won ","color":"gold"},{"text":"DRAGON WARS!","color":"gold","bold":true}]

execute if score $number team matches 2.. if score $number mode matches 2 if entity @a[tag=playing,tag=won_treasure_mode,team=red] run scoreboard players add @a[team=red,tag=playing] stats_wins 1
execute if score $number team matches 2.. if score $number mode matches 2 if entity @a[tag=playing,tag=won_treasure_mode,team=blue] run scoreboard players add @a[team=blue,tag=playing] stats_wins 1
execute if score $number team matches 2.. if score $number mode matches 2 if entity @a[tag=playing,tag=won_treasure_mode,team=yellow] run scoreboard players add @a[team=yellow,tag=playing] stats_wins 1
execute if score $number team matches 2.. if score $number mode matches 2 if entity @a[tag=playing,tag=won_treasure_mode,team=green] run scoreboard players add @a[team=green,tag=playing] stats_wins 1
execute if score $number team matches 2.. if score $number mode matches 2 if entity @a[tag=playing,tag=won_treasure_mode,team=gray] run scoreboard players add @a[team=gray,tag=playing] stats_wins 1

execute as @a[tag=playing] at @s run scoreboard players operation @s temp_wins -= @s stats_wins
execute if score $number mode matches 0 run advancement grant @a[scores={temp_wins=..-1},tag=playing] only minecraft:custom/win_rounds
execute if score $number mode matches 1 run advancement grant @a[scores={temp_wins=..-1},tag=playing] only minecraft:custom/win_kills
execute if score $number mode matches 2 run advancement grant @a[scores={temp_wins=..-1},tag=playing] only minecraft:custom/win_treasure
execute if score $number team matches 2.. run advancement grant @a[scores={temp_wins=..-1},tag=playing] only minecraft:custom/win_teams

advancement grant @a[scores={stats_wins=5..}] only minecraft:custom/win_five_games
advancement grant @a[scores={stats_wins=10..}] only minecraft:custom/win_ten_games
advancement grant @a[advancements={custom/unlock_celebration=false,custom/play_game=true,custom/win_rounds=true,custom/win_kills=true,custom/win_treasure=true,custom/win_teams=true,custom/win_five_games=true,custom/win_ten_games=true,custom/play_on_every_map=true}] only minecraft:custom/unlock_celebration
execute as @a[tag=playing] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1000000 1
scoreboard players enable @a[tag=playing] unready_all
scoreboard players set $time unready_cool 280
scoreboard players reset @a[tag=playing] l_blast_timer
function end:players
bossbar set minecraft:lobby players @a[tag=!playing]