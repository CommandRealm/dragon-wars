# called to check our fireworks

execute store result score @s calculate run clear @s firework_rocket{display:{Lore:['{"text":"A flight duration I rocket.","italic":false,"color":"yellow"}']}} 0
execute if score @s calculate > $number max_fireworks run function game:inventory_check/fireworks/clear