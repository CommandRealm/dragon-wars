function game:chest_random
execute if score $rand chest_random matches 0 run setblock ~ ~1 ~ trapped_chest[facing=east]
execute if score $rand chest_random matches 1 run setblock ~ ~1 ~ trapped_chest[facing=west]
execute if score $rand chest_random matches 2 run setblock ~ ~1 ~ trapped_chest[facing=north]
execute if score $rand chest_random matches 3 run setblock ~ ~1 ~ trapped_chest[facing=south]
data merge block ~ ~1 ~ {Items:[{Slot:0b,id:"minecraft:ghast_tear",Count:1b,tag:{clear_during_game:1,display:{Name:'[{"text":"Check out some of our other games!","color":"gray","italic":false}]'}}},{Slot:1b,id:"minecraft:tnt",Count:1b,tag:{clear_during_game:1,display:{Name:'[{"text":"Boom ","italic":false,"color":"green","bold":true},{"text":"Doom","color":"dark_green","bold":true}]'}}},{Slot:2b,id:"minecraft:yellow_glazed_terracotta",Count:1b,tag:{clear_during_game:1,display:{Name:'[{"text":"Build","italic":false,"color":"yellow","bold":true},{"text":" Party","color":"gold"}]'}}},{Slot:3b,id:"minecraft:trident",Count:1b,tag:{clear_during_game:1,display:{Name:'[{"text":"Stealthiators","bold":true,"color":"dark_gray","italic":false}]'},HideFlags:63}},{Slot:4b,id:"minecraft:player_head",Count:1b,tag:{HideFlags:63,display:{Name:'[{"text":"Would","italic":false,"color":"blue","bold":true},{"text":" You","color":"aqua"},{"text":" Rather","color":"yellow"}]'},SkullOwner:{Id: [I; 172890742, 2097103717, -2142657588, -932936961],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjlmYzEyMmE4NzkwODM4YWRiNDE0ZDdjOGI4NWIyODRiMGZlM2ZjN2U4OTA2YTIzMjNmZmNjZjI1OGMzNGIwZSJ9fX0"}]}}}}]}