# called to start the striking phase.

# tp
tp @a[tag=playing] 57 72 18

# seeing how many strikes there should be

scoreboard players set $strikes competitive 6

# removing tag saying I striked
tag @a remove striked
tag @a remove striker

#randomizing which team starts
scoreboard players set $mod random 2
function random:random
scoreboard players operation $comp_team competitive = $rand random

execute if score $comp_team competitive matches 0 run function game:competitive/striking/choose_red_striker
execute if score $comp_team competitive matches 1 run function game:competitive/striking/choose_blue_striker
clear @a[tag=playing]
effect clear @a[tag=playing]
scoreboard players reset @a[tag=playing] l_blast_timer
schedule clear game:setup_map_tp
schedule clear game:spawnpoint
