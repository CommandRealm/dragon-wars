function game:elimination
execute as @a[scores={kill_sound=1..}] at @s run function game:kill_sound
scoreboard players set $number active 0
execute as @a[tag=playing,team=!dead] at @s run scoreboard players add $number active 1
execute if entity @a[tag=playing,tag=fakeplayer] run scoreboard players add $number active 1
execute unless score $time cooldown matches 1.. if score $number players matches 2.. if score $number active matches 1 run function game:round_check
execute unless score $time cooldown matches 1.. if score $number players matches 2.. if score $number active matches 0 run function game:round_tie
