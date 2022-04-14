tp @s 0 66 0 0 -20
tellraw @s ["",{"text":"🗡 ","color":"light_purple","bold":true},{"text":"Please wait until the game is over.","color":"red"}]
execute at @s run playsound minecraft:entity.enderman.teleport master @s 0 66 0 10000000 1
title @s times 0 20 5