##Called to distribution players onto teams.

##Removing and adding objective
scoreboard objectives remove distribution
scoreboard objectives add distribution dummy

execute if score $number team matches 2 run function game:team_distribution/two_teams
execute if score $number team matches 3 run function game:team_distribution/three_teams
execute if score $number team matches 4 run function game:team_distribution/four_teams
execute if score $number team matches 5 run function game:team_distribution/five_teams
