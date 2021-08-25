scoreboard players set @s[scores={menu=4,click_11=1..}] particle 7
execute if entity @s[scores={menu=4,click_11=1..}] run function chest_menu:start_particles
scoreboard players set @s[scores={menu=5,click_11=1..}] sword 7
execute if entity @s[scores={menu=5,click_11=1..}] run function chest_menu:start_sword
scoreboard players set @s[scores={menu=6,click_11=1..}] celeb_number 7
execute if entity @s[scores={menu=6,click_11=1..}] run function chest_menu:start_celebration
playsound minecraft:ui.button.click master @s ~ ~ ~ 

