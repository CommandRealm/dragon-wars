scoreboard players set @s[scores={menu=4,click_8=1..}] particle 4
execute if entity @s[scores={menu=4,click_8=1..}] run function chest_menu:start_particles
scoreboard players set @s[scores={menu=5,click_8=1..}] sword 4
execute if entity @s[scores={menu=5,click_8=1..}] run function chest_menu:start_sword
scoreboard players set @s[scores={menu=6,click_8=1..}] celeb_number 4
execute if entity @s[scores={menu=6,click_8=1..}] run function chest_menu:start_celebration
playsound minecraft:ui.button.click master @s ~ ~ ~ 

