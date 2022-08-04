# called when the current strike is over

scoreboard players remove $strikes competitive 1



# selecting next striker
execute if score $strikes competitive matches 3 if score $comp_team competitive matches 0 run function game:competitive/striking/choose_blue_striker
execute if score $strikes competitive matches 3 if score $comp_team competitive matches 1 run function game:competitive/striking/choose_red_striker

execute if score $strikes competitive matches 2 if score $comp_team competitive matches 0 run function game:competitive/striking/choose_blue_striker
execute if score $strikes competitive matches 2 if score $comp_team competitive matches 1 run function game:competitive/striking/choose_red_striker

execute if score $strikes competitive matches 1 if score $comp_team competitive matches 0 run function game:competitive/striking/choose_red_striker
execute if score $strikes competitive matches 1 if score $comp_team competitive matches 1 run function game:competitive/striking/choose_blue_striker

# resetting timer if another round is needed
execute if score $strikes competitive matches 1.. run scoreboard players set $time competitive 1

tp @a[tag=playing,x=57,y=72,z=18,distance=5..] 57 72 18
execute if score $strikes competitive matches 1.. run function game:competitive/striking/start_striker
execute if score $strikes competitive matches 0 run tp @a[tag=playing] 57 72 18
execute if score $strikes competitive matches 0 run scoreboard players set $time competitive 601
execute if score $strikes competitive matches 0 run schedule function game:competitive/striking/over 10t

# sound
execute as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 1 0
execute as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 1 0.67