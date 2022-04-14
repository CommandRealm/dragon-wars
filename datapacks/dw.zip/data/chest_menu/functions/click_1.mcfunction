execute if entity @s[scores={menu=0,click_1=1..}] run function chest_menu:start_credits
execute if entity @s[scores={menu=1,click_1=1..}] run function chest_menu:start
execute if entity @s[scores={menu=2,click_1=1..}] run function chest_menu:start
execute if entity @s[scores={menu=3,click_1=1..}] run function chest_menu:start
execute if entity @s[scores={menu=4..6,click_1=1..}] run function chest_menu:start_cosmetics
execute if entity @s[scores={menu=7,click_1=1..}] run function chest_menu:start
execute if entity @s[scores={menu=8,click_1=1..}] run function chest_menu:start_cosmetics
playsound minecraft:ui.button.click master @s ~ ~ ~ 

