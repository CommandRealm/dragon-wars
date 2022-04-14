tellraw @s ["",{"text":"🗡 ","color":"light_purple","bold":true},{"text":"Whoops! Make sure not to do that in a game!","color":"red"}]
playsound minecraft:entity.generic.hurt master @s
tp @s 0 66 0 0 -20
advancement grant @s only minecraft:custom/fall_off_lobby

# clearing self but reequipping elytra if necessary
clear @s
execute if entity @s[tag=test_elytra] run function lobby:get_elytra

# removing armor
tag @s remove iron
tag @s remove chain
tag @s remove ninja
tag @s remove lucky
tag @s remove spartan
tag @s remove gladiator
tag @s remove jump_boost

scoreboard players reset @s armor_delay

item replace entity @s armor.legs with air
item replace entity @s armor.feet with air