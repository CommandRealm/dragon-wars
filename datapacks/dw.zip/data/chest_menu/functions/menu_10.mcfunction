



execute store result score @s click_1 run clear @s dragon_head
execute if entity @s[scores={click_1=1..}] at @s run function chest_menu:click_tournaments

execute store result score @s click_1 run clear @s barrier
execute if entity @s[scores={click_1=1..}] at @s run function chest_menu:click_tournaments
