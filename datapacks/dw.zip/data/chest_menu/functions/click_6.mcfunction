scoreboard players set @s[scores={menu=4,click_6=1..}] particle 2
execute if entity @s[scores={menu=4,click_6=1..}] run function chest_menu:start_particles
scoreboard players set @s[scores={menu=5,click_6=1..}] sword 2
execute if entity @s[scores={menu=5,click_6=1..}] run function chest_menu:start_sword
scoreboard players set @s[scores={menu=6,click_6=1..}] celeb_number 2
execute if entity @s[scores={menu=6,click_6=1..}] run function chest_menu:start_celebration
playsound minecraft:ui.button.click master @s ~ ~ ~ 
execute if entity @s[scores={menu=7,click_6=1..}] run function chest_menu:start_statistics
execute if entity @s[scores={menu=8,click_6=1..}] run function chest_menu:toggle_celebration

execute if entity @s[scores={menu=0,click_6=1..}] run tp @s 4 66 22