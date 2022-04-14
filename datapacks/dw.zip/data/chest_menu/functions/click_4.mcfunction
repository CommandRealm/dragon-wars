execute if entity @s[scores={menu=0,click_4=1..}] run function chest_menu:start_statistics
execute if entity @s[scores={menu=1,click_4=1..}] run function chest_menu:start_credits
execute if entity @s[scores={menu=2,click_4=1..}] run function chest_menu:droppable_firework
execute if entity @s[scores={menu=3,click_4=1..}] run function chest_menu:start_celebration
scoreboard players set @s[scores={menu=4,click_4=1..}] particle 0
execute if entity @s[scores={menu=4,click_4=1..}] run function chest_menu:start_particles
scoreboard players set @s[scores={menu=5,click_4=1..}] sword 0
execute if entity @s[scores={menu=5,click_4=1..}] run function chest_menu:start_sword
scoreboard players set @s[scores={menu=6,click_4=1..}] celeb_number 0
execute if entity @s[scores={menu=6,click_4=1..}] run function chest_menu:start_celebration
execute if entity @s[scores={menu=7,click_4=1..}] run function chest_menu:start_statistics
execute if entity @s[scores={menu=8,click_4=1..}] run function chest_menu:toggle_boost_particle
playsound minecraft:ui.button.click master @s ~ ~ ~ 

