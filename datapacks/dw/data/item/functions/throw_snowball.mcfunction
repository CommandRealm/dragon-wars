# called when we throw a snowball

# giving out ids now (now because ids are required for this)
execute as @a at @s unless score @s id matches 0.. run function game:get_id

# giving the snowball our id
scoreboard players operation @e[type=snowball,nbt={HasBeenShot:0b}] id = @s id

scoreboard players reset @s throw_snowball