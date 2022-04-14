scoreboard players set $teams players 0
execute as @r[tag=playing,team=red] at @s run scoreboard players add $teams players 1
execute as @r[tag=playing,team=blue] at @s run scoreboard players add $teams players 1
execute as @r[tag=playing,team=yellow] at @s run scoreboard players add $teams players 1
execute as @r[tag=playing,team=green] at @s run scoreboard players add $teams players 1
execute as @r[tag=playing,team=gray] at @s run scoreboard players add $teams players 1
execute unless score $time cooldown matches 1.. if score $teams players matches ..1 run function game:end