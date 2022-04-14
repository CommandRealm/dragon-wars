##called to distribution three teams

scoreboard players set $check distribution 100000
execute store result score $red distribution if entity @a[tag=playing,team=red]
execute store result score $blue distribution if entity @a[tag=playing,team=blue]
execute store result score $yellow distribution if entity @a[tag=playing,team=yellow]
scoreboard players add $red distribution 0
scoreboard players add $blue distribution 0
scoreboard players add $yellow distribution 0
scoreboard players operation $check distribution < $red distribution
scoreboard players operation $check distribution < $blue distribution
scoreboard players operation $check distribution < $yellow distribution
scoreboard players operation $red distribution -= $check distribution
scoreboard players operation $blue distribution -= $check distribution
scoreboard players operation $yellow distribution -= $check distribution
execute if score $red distribution matches 0 as @r[tag=playing,tag=!on_team] at @s run function game:team_distribution/join_red
execute if score $blue distribution matches 0 as @r[tag=playing,tag=!on_team] at @s run function game:team_distribution/join_blue
execute if score $yellow distribution matches 0 as @r[tag=playing,tag=!on_team] at @s run function game:team_distribution/join_yellow
execute if entity @a[tag=!on_team,tag=playing] run function game:team_distribution/three_teams