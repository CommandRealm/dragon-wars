scoreboard players set $teams players 0
execute as @r[scores={ready=1..},team=red] at @s run scoreboard players add $teams players 1
execute as @r[scores={ready=1..},team=blue] at @s run scoreboard players add $teams players 1
execute as @r[scores={ready=1..},team=yellow] at @s run scoreboard players add $teams players 1
execute as @r[scores={ready=1..},team=green] at @s run scoreboard players add $teams players 1
execute as @r[scores={ready=1..},team=gray] at @s run scoreboard players add $teams players 1
execute if score $teams players matches ..1 unless entity @a[scores={ready=1..},team=!red,team=!blue,team=!yellow,team=!green,team=!gray] run team join red @r[scores={ready=1..}]
execute if score $teams players matches ..1 if entity @a[scores={ready=1..},team=!red,team=!blue,team=!yellow,team=!green,team=!gray] run team join red @r[scores={ready=1..},team=!red,team=!blue,team=!yellow,team=!green,team=!gray]
scoreboard players set $teams players 0
execute as @r[scores={ready=1..},team=red] at @s run scoreboard players add $teams players 1
execute as @r[scores={ready=1..},team=blue] at @s run scoreboard players add $teams players 1
execute as @r[scores={ready=1..},team=yellow] at @s run scoreboard players add $teams players 1
execute as @r[scores={ready=1..},team=green] at @s run scoreboard players add $teams players 1
execute as @r[scores={ready=1..},team=gray] at @s run scoreboard players add $teams players 1
execute if score $teams players matches ..1 unless entity @a[scores={ready=1..},team=!red,team=!blue,team=!yellow,team=!green,team=!gray] run team join blue @r[scores={ready=1..}]
execute if score $teams players matches ..1 if entity @a[scores={ready=1..},team=!red,team=!blue,team=!yellow,team=!green,team=!gray] run team join blue @r[scores={ready=1..},team=!red,team=!blue,team=!yellow,team=!green,team=!gray]

execute if score $number team matches 2 if entity @a[scores={ready=1},team=!red,team=!blue,team=!yellow,team=!green,team=!gray] run function pregame:two_teams
execute if score $number team matches 3 if entity @a[scores={ready=1},team=!red,team=!blue,team=!yellow,team=!green,team=!gray] run team join yellow @r[scores={ready=1..},team=!red,team=!blue,team=!yellow,team=!green,team=!gray]
execute if score $number team matches 3 if entity @a[scores={ready=1},team=!red,team=!blue,team=!yellow,team=!green,team=!gray] run function pregame:three_teams
execute if score $number team matches 4 if entity @a[scores={ready=1},team=!red,team=!blue,team=!yellow,team=!green,team=!gray] run team join yellow @r[scores={ready=1..},team=!red,team=!blue,team=!yellow,team=!green,team=!gray]
execute if score $number team matches 4 if entity @a[scores={ready=1},team=!red,team=!blue,team=!yellow,team=!green,team=!gray] run team join green @r[scores={ready=1..},team=!red,team=!blue,team=!yellow,team=!green,team=!gray]
execute if score $number team matches 4 if entity @a[scores={ready=1},team=!red,team=!blue,team=!yellow,team=!green,team=!gray] run function pregame:four_teams
execute if score $number team matches 5 if entity @a[scores={ready=1},team=!red,team=!blue,team=!yellow,team=!green,team=!gray] run team join yellow @r[scores={ready=1..},team=!red,team=!blue,team=!yellow,team=!green,team=!gray]
execute if score $number team matches 5 if entity @a[scores={ready=1},team=!red,team=!blue,team=!yellow,team=!green,team=!gray] run team join green @r[scores={ready=1..},team=!red,team=!blue,team=!yellow,team=!green,team=!gray]
execute if score $number team matches 5 if entity @a[scores={ready=1},team=!red,team=!blue,team=!yellow,team=!green,team=!gray] run team join gray @r[scores={ready=1..},team=!red,team=!blue,team=!yellow,team=!green,team=!gray]
execute if score $number team matches 5 if entity @a[scores={ready=1},team=!red,team=!blue,team=!yellow,team=!green,team=!gray] run function pregame:five_teams