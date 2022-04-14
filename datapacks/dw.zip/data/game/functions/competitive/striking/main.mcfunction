# called during striking phase.

# counting items in the item Hall
execute unless score $item_count calculate = $calculate calculate run function game:competitive/striking/current_strike_over
execute store result score $calculate calculate if entity @e[type=item,tag=item_model]


execute if score $time competitive matches 400 run function game:competitive/striking/time_warning
execute if score $time competitive matches 600 run function game:competitive/striking/strike_random

function game:check_teams

effect give @a[tag=playing] resistance 1 255 true
effect give @a[tag=playing] saturation 1 255 true

effect give @e[type=slime,tag=comp_slime] invisibility 10000 255 true