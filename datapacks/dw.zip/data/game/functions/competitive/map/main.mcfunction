# called during the map selection phase.


# seeing if buttons are pressed

execute if block 57 78 14 stone_button[powered=true] run function game:competitive/map/select_sleet
execute if block 60 78 15 stone_button[powered=true] run function game:competitive/map/select_desolate
execute if block 61 78 18 stone_button[powered=true] run function game:competitive/map/select_clockwork
execute if block 60 78 21 stone_button[powered=true] run function game:competitive/map/select_foundation
execute if block 57 78 22 stone_button[powered=true] run function game:competitive/map/select_graviton
execute if block 54 78 21 stone_button[powered=true] run function game:competitive/map/select_luminosity
execute if block 53 78 18 stone_button[powered=true] run function game:competitive/map/select_extraterrestrial

execute if score $time competitive matches 1800 run function game:competitive/map/time_warning
execute if score $time competitive matches 2000 run function game:competitive/map/random_map

function game:check_teams

effect give @a[tag=playing] resistance 1 255 true
effect give @a[tag=playing] saturation 1 255 true

effect give @e[type=slime,tag=comp_slime] invisibility 10000 255 true