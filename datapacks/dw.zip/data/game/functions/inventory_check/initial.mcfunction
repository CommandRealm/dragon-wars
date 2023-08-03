# seeing if the game is running
execute if entity @s[gamemode=adventure] run function game:inventory_check/check
advancement revoke @s only game:inventory_updated