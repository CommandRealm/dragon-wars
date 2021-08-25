execute if entity @s[scores={menu=1,click_2=1..}] run function chest_menu:start_credits
execute if entity @s[scores={menu=0,click_2=1..}] run function chest_menu:start_personal
execute if entity @s[scores={menu=2,click_2=1..}] run function chest_menu:action_bar
execute if entity @s[scores={menu=3,click_2=1..}] run function chest_menu:start_particles
execute if entity @s[scores={menu=4,click_2=1..}] run function chest_menu:start_particles
execute if entity @s[scores={menu=5,click_2=1..}] run function chest_menu:start_sword
execute if entity @s[scores={menu=6,click_2=1..}] run function chest_menu:start_celebration
execute if entity @s[scores={menu=7,click_2=1..}] run function chest_menu:start_statistics
execute if entity @s[scores={menu=8,click_2=1..}] run function chest_menu:start_advancement_unlocks
playsound minecraft:ui.button.click master @s ~ ~ ~ 

