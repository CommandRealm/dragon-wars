scoreboard players set @s[scores={menu=5,click_16=1..}] sword 12
execute if entity @s[scores={menu=5,click_16=1..}] run function chest_menu:start_sword
scoreboard players set @s[scores={menu=6,click_16=1..}] celeb_number 12
execute if entity @s[scores={menu=6,click_16=1..}] run function chest_menu:start_celebration
playsound minecraft:ui.button.click master @s ~ ~ ~ 
