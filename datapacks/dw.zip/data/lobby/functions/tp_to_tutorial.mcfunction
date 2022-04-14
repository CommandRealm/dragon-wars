# called to tp to the tutorial

tp @s -1000 121 -4 0 5
tellraw @s [{"text":"- ","color":"gray"},{"text":"Welcome to the ","color":"yellow"},{"text":"Tutorial","color":"light_purple"},{"text":"!","color":"gray"}]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 10000000 1
title @s times 0 20 5

# schedule function tutorial:spawn_tutorial_text 3t

function lobby:equip_elytra