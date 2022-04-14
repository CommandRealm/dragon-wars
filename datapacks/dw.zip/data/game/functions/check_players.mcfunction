scoreboard players set $number players 0
execute as @a[tag=playing] at @s run scoreboard players add $number players 1
execute if entity @a[tag=fakeplayer] run scoreboard players add $number players 2
execute unless score $time cooldown matches 1.. if score $toggle team matches 0 if score $number players matches ..1 run function game:end