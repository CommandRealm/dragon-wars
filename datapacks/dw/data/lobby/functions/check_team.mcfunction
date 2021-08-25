execute if score $game state matches 0 if score $number team matches 2.. if entity @s[scores={select_team=10}] run function lobby:select_leave
execute if score $game state matches 0 if score $number team matches 2.. if entity @s[scores={select_team=10}] run scoreboard players set @s select_team 0
execute if score $number team matches 1 run scoreboard players set @s select_team -100
execute if score $number team matches 2 run scoreboard players set @s[scores={select_team=3..}] select_team -100
execute if score $number team matches 3 run scoreboard players set @s[scores={select_team=4..}] select_team -100
execute if score $number team matches 4 run scoreboard players set @s[scores={select_team=5..}] select_team -100
execute if score $game state matches 1.. run scoreboard players set @s select_team -100
execute if entity @s[scores={select_team=1}] run function lobby:select_red
execute if entity @s[scores={select_team=2}] run function lobby:select_blue
execute if entity @s[scores={select_team=3}] run function lobby:select_yellow
execute if entity @s[scores={select_team=4}] run function lobby:select_green
execute if entity @s[scores={select_team=5}] run function lobby:select_gray
scoreboard players enable @s select_team
execute if entity @s[scores={select_team=-100}] run function general:error
scoreboard players set @s select_team 0