gamerule showDeathMessages false
scoreboard players set $mod death_msg 15
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand death_msg run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand death_msg %= $mod death_msg
kill @e[type=area_effect_cloud,tag=random]
execute if score $rand death_msg matches 0 run tellraw @a [{"text":"☠ ","color":"dark_red"},{"selector":"@s"},{"text":" wishes they had a rocket.","color":"white"}]
execute if score $rand death_msg matches 1 run tellraw @a [{"text":"☠ ","color":"dark_red"},{"selector":"@s"},{"text":" got doomed.","color":"white"}]
execute if score $rand death_msg matches 2 run tellraw @a [{"text":"☠ ","color":"dark_red"},{"selector":"@s"},{"text":" needed their elytra.","color":"white"}]
execute if score $rand death_msg matches 3 run tellraw @a [{"text":"☠ ","color":"dark_red"},{"selector":"@s"},{"text":" stopped being a dragon.","color":"white"}]
execute if score $rand death_msg matches 4 run tellraw @a [{"text":"☠ ","color":"dark_red"},{"selector":"@s"},{"text":" didn't want to fly anymore.","color":"white"}]
execute if score $rand death_msg matches 5 run tellraw @a [{"text":"☠ ","color":"dark_red"},{"selector":"@s"},{"text":" wanted to play a different game.","color":"white"}]
execute if score $rand death_msg matches 6 run tellraw @a [{"text":"☠ ","color":"dark_red"},{"selector":"@s"},{"text":" didn't know how to play.","color":"white"}]
execute if score $rand death_msg matches 7 run tellraw @a [{"text":"☠ ","color":"dark_red"},{"selector":"@s"},{"text":" was a casualty of the war.","color":"white"}]
execute if score $rand death_msg matches 8 run tellraw @a [{"text":"☠ ","color":"dark_red"},{"selector":"@s"},{"text":" just wanted some alone time.","color":"white"}]
execute if score $rand death_msg matches 9 run tellraw @a [{"text":"☠ ","color":"dark_red"},{"selector":"@s"},{"text":" just plain died.","color":"white"}]

execute if score $rand death_msg matches 10 run tellraw @a [{"text":"☠ ","color":"dark_red"},{"selector":"@s"},{"text":" lost the war.","color":"white"}]
execute if score $rand death_msg matches 11 run tellraw @a [{"text":"☠ ","color":"dark_red"},{"selector":"@s"},{"text":" flew too close to the void.","color":"white"}]
execute if score $rand death_msg matches 12 run tellraw @a [{"text":"☠ ","color":"dark_red"},{"selector":"@s"},{"text":" plummeted.","color":"white"}]
execute if score $rand death_msg matches 13 run tellraw @a [{"text":"☠ ","color":"dark_red"},{"selector":"@s"},{"text":" vanished into darkness.","color":"white"}]
execute if score $rand death_msg matches 14 run tellraw @a [{"text":"☠ ","color":"dark_red"},{"selector":"@s"},{"text":" has left the land of dragons.","color":"white"}]
kill @s
gamerule showDeathMessages true