team join dead @a[scores={death=1..},gamemode=!spectator]
##execute if score $map map matches 0 run spawnpoint @a[scores={death=1..},gamemode=!spectator] 2000 200 0
##execute if score $map map matches 1 run spawnpoint @a[scores={death=1..},gamemode=!spectator] 3000 200 0
gamemode spectator @a[scores={death=1..}]
execute if entity @a[scores={death=1..}] run kill @e[type=item,nbt={Item:{tag:{KillOnDeath:1}}}]
kill @e[type=experience_orb]
tag @a[scores={death=1..}] remove warning
scoreboard players set @a[scores={death=1..}] l_blast_timer 0

# removing advancement
advancement revoke @a[scores={death=1..}] only game:hit_by_armor_breaker
advancement revoke @a[scores={death=1..}] only game:hit_by_explosive_arrow