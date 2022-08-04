scoreboard players set @s[scores={menu=5,click_23=1..}] sword 20
execute if entity @s[scores={menu=5,click_23=1..}] run function chest_menu:start_sword

playsound minecraft:ui.button.click master @s ~ ~ ~ 
