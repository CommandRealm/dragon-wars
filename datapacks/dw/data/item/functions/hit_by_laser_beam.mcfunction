gamerule showDeathMessages false
effect give @s minecraft:instant_damage 1 1 true
execute if entity @s[scores={death=1..}] run tellraw @a [{"selector":"@s"},{"text":" was obliterated by a levitation blast.","color":"white"}]
gamerule showDeathMessages true
scoreboard players set @s l_blast_timer 20