scoreboard players set @s[scores={menu=5,click_19=1..}] sword 15
execute if entity @s[scores={menu=5,click_19=1..}] run function chest_menu:start_sword
scoreboard players set @s[scores={menu=6,click_19=1..}] celeb_number 15
execute if entity @s[scores={menu=6,click_19=1..}] run function chest_menu:start_celebration
playsound minecraft:ui.button.click master @s ~ ~ ~ 
