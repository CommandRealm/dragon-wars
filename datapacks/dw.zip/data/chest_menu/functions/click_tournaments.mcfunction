execute unless data entity @s EnderItems[{id:"minecraft:barrier"}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 

execute unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function chest_menu:start
execute if data entity @s EnderItems[{id:"minecraft:barrier"}] run function chest_menu:start_tournaments
