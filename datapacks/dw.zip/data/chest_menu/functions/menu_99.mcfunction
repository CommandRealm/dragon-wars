execute store result score @s click_1 run clear @s book
execute if entity @s[scores={click_1=1..}] at @s run function chest_menu:click_titles

execute store result score @s click_1 run clear @s barrier
execute if entity @s[scores={click_1=1..}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 
execute if entity @s[scores={click_1=1..}] run function chest_menu:start

execute store result score @s click_1 run clear @s written_book{clickable:1}
execute if entity @s[gamemode=adventure,scores={click_1=1..}] at @s run function chest_menu:click_titles