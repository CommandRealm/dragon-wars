execute unless entity @s[tag=!no_msg] run playsound minecraft:ui.button.click master @s ~ ~ ~ 100000 1
tellraw @s[tag=!no_msg] ["",{"text":"🗡 ","color":"light_purple","bold":true},{"text":"All items are off.","color":"red"}]
tag @s add no_msg
tag @r add no_toggle
function hall_of_items:all_ran
tag @a remove no_toggle
tag @a[tag=!no_remove_msg] remove no_msg