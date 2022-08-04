# called when tournament swords are clicked.


execute if entity @s[tag=has_t_j22_1] unless data entity @s {EnderItems:[{Slot:0b,id:"minecraft:orange_stained_glass_pane",tag:{ChestSword:1}}]} run scoreboard players set @s sword 101
execute if entity @s[tag=has_t_j22_2] unless data entity @s {EnderItems:[{Slot:0b,id:"minecraft:orange_stained_glass_pane",tag:{ChestSword:2}}]} run scoreboard players set @s sword 102
execute if entity @s[tag=has_t_j22_3] unless data entity @s {EnderItems:[{Slot:0b,id:"minecraft:orange_stained_glass_pane",tag:{ChestSword:3}}]} run scoreboard players set @s sword 103

execute if data entity @s EnderItems[{id:"minecraft:barrier"}] run function chest_menu:start_tournament_sword
execute if data entity @s EnderItems[{id:"minecraft:barrier"}] run playsound minecraft:ui.button.click master @s ~ ~ ~


execute unless data entity @s EnderItems[{id:"minecraft:barrier"}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 

execute unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function chest_menu:start_sword