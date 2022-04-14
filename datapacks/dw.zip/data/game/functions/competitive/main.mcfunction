# called when competitive is being played.

# adding the timer
scoreboard players add $time competitive 1


# strike items phase.
execute if score $time competitive matches 1 run function game:competitive/striking/start

execute if score $time competitive matches 1 run function game:competitive/striking/start_striker

execute if score $time competitive matches 1..600 run function game:competitive/striking/main

execute if score $time competitive matches 801..2100 run function game:competitive/map/main