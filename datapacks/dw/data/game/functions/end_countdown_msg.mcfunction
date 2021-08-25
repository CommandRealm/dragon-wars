execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 10000 0
scoreboard players operation $time game_end /= $20 number
execute unless score $time game_end matches 0 run tellraw @a[tag=playing] [{"score":{"objective":"game_end","name":"$time"},"color":"dark_red"},{"text":" seconds until the game ends.","color":"red"}]
execute if score $time game_end matches 20 run tellraw @a[tag=playing] [{"score":{"objective":"game_end","name":"$time"},"color":"dark_red"},{"text":" second until the game ends.","color":"red"}]
scoreboard players operation $time game_end *= $20 number
