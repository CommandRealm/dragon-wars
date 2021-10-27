##Called when we drop the ready book

##resetting score
scoreboard players reset @s drop_ready_book

tp @s 0 66 0 0 -20

execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
execute at @s run particle cloud ~ ~1 ~ 0.25 0.5 0.25 0.15 20 normal @s

kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}}]