scoreboard players set @s[scores={menu=5,click_15=1..}] sword 11
execute if entity @s[scores={menu=5,click_15=1..}] run function chest_menu:start_sword
scoreboard players set @s[scores={menu=6,click_15=1..}] celeb_number 11
execute if entity @s[scores={menu=6,click_15=1..}] run function chest_menu:start_celebration
playsound minecraft:ui.button.click master @s ~ ~ ~ 
