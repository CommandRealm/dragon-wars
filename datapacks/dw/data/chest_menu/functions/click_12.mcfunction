scoreboard players set @s[scores={menu=4,click_12=1..}] particle 8
execute if entity @s[scores={menu=4,click_12=1..}] run function chest_menu:start_particles
scoreboard players set @s[scores={menu=5,click_12=1..}] sword 8
execute if entity @s[scores={menu=5,click_12=1..}] run function chest_menu:start_sword
scoreboard players set @s[scores={menu=6,click_12=1..}] celeb_number 8
execute if entity @s[scores={menu=6,click_12=1..}] run function chest_menu:start_celebration
playsound minecraft:ui.button.click master @s ~ ~ ~ 

