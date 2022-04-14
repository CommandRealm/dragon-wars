execute positioned ~ ~0.5 ~ if entity @e[distance=..0.75,tag=credits] run tag @s add stop_raycast
execute positioned ~ ~0.5 ~ if entity @e[distance=..0.75,tag=credits] run function lobby:credit_details
execute if entity @s[distance=..7,tag=!stop_raycast] positioned ^ ^ ^1 run function lobby:raycast
tag @a remove stop_raycast