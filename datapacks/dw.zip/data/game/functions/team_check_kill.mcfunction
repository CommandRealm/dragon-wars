execute if entity @s[team=red] run scoreboard players add Red: kills 1
execute if entity @s[team=blue] run scoreboard players add Blue: kills 1
execute if entity @s[team=yellow] run scoreboard players add Yellow: kills 1
execute if entity @s[team=green] run scoreboard players add Green: kills 1
execute if entity @s[team=gray] run scoreboard players add Gray: kills 1

execute if score Red: kills matches 1.. run scoreboard players operation Red: check_kills = Red: kills
execute if score Blue: kills matches 1.. run scoreboard players operation Blue: check_kills = Blue: kills
execute if score Yellow: kills matches 1.. run scoreboard players operation Yellow: check_kills = Yellow: kills
execute if score Green: kills matches 1.. run scoreboard players operation Green: check_kills = Green: kills
execute if score Gray: kills matches 1.. run scoreboard players operation Gray: check_kills = Gray: kills

execute if score Red: kills matches 1.. run scoreboard players operation Red: check_kills -= $number check_kills
execute if score Blue: kills matches 1.. run scoreboard players operation Blue: check_kills -= $number check_kills
execute if score Yellow: kills matches 1.. run scoreboard players operation Yellow: check_kills -= $number check_kills
execute if score Green: kills matches 1.. run scoreboard players operation Green: check_kills -= $number check_kills
execute if score Gray: kills matches 1.. run scoreboard players operation Gray: check_kills -= $number check_kills

execute if score Red: check_kills matches 0.. run scoreboard players set $end check_kills 100
execute if score Blue: check_kills matches 0.. run scoreboard players set $end check_kills 100
execute if score Yellow: check_kills matches 0.. run scoreboard players set $end check_kills 100
execute if score Green: check_kills matches 0.. run scoreboard players set $end check_kills 100
execute if score Gray: check_kills matches 0.. run scoreboard players set $end check_kills 100

execute if score Red: check_kills matches 0.. run tag @a[team=red] add celebration
execute if score Blue: check_kills matches 0.. run tag @a[team=blue] add celebration
execute if score Yellow: check_kills matches 0.. run tag @a[team=yellow] add celebration
execute if score Green: check_kills matches 0.. run tag @a[team=green] add celebration
execute if score Gray: check_kills matches 0.. run tag @a[team=gray] add celebration

execute if score $end check_kills matches 100 run function game:team_kill_end
scoreboard players set $end check_kills 0
scoreboard players set @s team_kill 0