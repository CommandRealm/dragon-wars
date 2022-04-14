title @s times 0 30 5
execute if score $time cooldown matches 0 run scoreboard players set @s respawn 60
gamemode spectator
effect give @s blindness 4 255 true
execute if score $number mode matches 1 run kill @e[type=item,nbt={Item:{tag:{KillOnDeath:1}}}]
execute if score $number mode matches 2 as @e[type=item,nbt={Age:0s}] at @s unless entity @s[nbt={Item:{tag:{Treasure:1}}}] run kill @s
kill @e[type=experience_orb]
scoreboard players set @s death 0
scoreboard players set @s elytra 2
tag @s add e_cooldown
scoreboard players set @s armor_delay 0
stopsound @s * minecraft:ambient.underwater.loop
scoreboard players set @s l_blast_timer 0
attribute @s generic.attack_damage base set 1
scoreboard players reset @s fake_strength