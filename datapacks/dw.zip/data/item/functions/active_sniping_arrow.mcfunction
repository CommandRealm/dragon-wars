# called when there is an active sniping arrow

scoreboard players add @e[type=arrow,tag=sniping_arrow] sniping_bow 1
execute as @e[type=arrow,tag=sniping_arrow,scores={sniping_bow=1..}] run function item:sniping_arrow_upgrade