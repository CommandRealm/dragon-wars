# called when we throw an egg

# giving out ids now (now because ids are required for this)
execute as @a at @s unless score @s id matches 0.. run function game:get_id

# giving the egg our id
scoreboard players operation @e[type=egg,nbt={HasBeenShot:0b}] id = @s id

scoreboard players reset @s throw_egg