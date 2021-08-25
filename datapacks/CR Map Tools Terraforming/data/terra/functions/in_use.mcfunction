tag @a[gamemode=!spectator,gamemode=!creative] remove crmTterraform
execute as @a[tag=crmTterraform] at @s run particle minecraft:dust 0 1 1 1 ~ ~0.2 ~ 0.4 0 0.4 1 1 force
execute as @a[tag=crmTterraform] at @s run particle minecraft:dust 1 1 0 1 ~ ~0.2 ~ 0.2 0 0.2 1 1 force
execute as @a[tag=crmTterraform,scores={crmTsnowball=1..}] at @s run tag @e[type=snowball,distance=..3,limit=1,sort=nearest] add crmTsphere
execute as @a[tag=crmTterraform,scores={crmTsnowball=1..}] at @s run data merge entity @e[type=snowball,distance=..3,limit=1,sort=nearest] {NoGravity:1}
scoreboard players set @a crmTsnowball 0
execute as @a[tag=crmTterraform,scores={crmTbatspawn=1..}] at @s run tag @e[type=bat,distance=..6,limit=1,sort=nearest] add crmT3by3by3
scoreboard players set @a crmTbatspawn 0
execute as @a[tag=crmTterraform,scores={crmTbeespawn=1..}] at @s run tag @e[type=bee,distance=..6,limit=1,sort=nearest] add crmTcolumnup
scoreboard players set @a crmTbeespawn 0
execute as @a[tag=crmTterraform,scores={crmTblazespawn=1..}] at @s run tag @e[type=blaze,distance=..6,limit=1,sort=nearest] add crmTcolumndown
scoreboard players set @a crmTblazespawn 0
execute if entity @e[tag=crmTsphere] run function terra:snowball
execute if entity @e[tag=crmTmarker] unless entity @e[tag=crmTsphere] run function terra:snowball
execute if entity @e[tag=crmTspherebuild] run function terra:sphere
execute if entity @e[tag=crmT3by3by3] run function terra:3by3by3
execute if entity @e[tag=crmTcolumnup] run function terra:columns
execute if entity @e[tag=crmTcolumndown] run function terra:columns