scoreboard players set @s[scores={menu=4,click_5=1..}] particle 1
execute if entity @s[scores={menu=4,click_5=1..}] run function chest_menu:start_particles
scoreboard players set @s[scores={menu=5,click_5=1..}] sword 1
execute if entity @s[scores={menu=5,click_5=1..}] run function chest_menu:start_sword
playsound minecraft:ui.button.click master @s ~ ~ ~ 
scoreboard players set @s[scores={menu=6,click_5=1..}] celeb_number 1
execute if entity @s[scores={menu=6,click_5=1..}] run function chest_menu:start_celebration
execute if entity @s[scores={menu=7,click_5=1..}] run function chest_menu:start_statistics
execute if entity @s[scores={menu=3,click_5=1..}] run function chest_menu:start_advancement_unlocks
execute if entity @s[scores={menu=8,click_5=1..}] run function chest_menu:toggle_sword_name


