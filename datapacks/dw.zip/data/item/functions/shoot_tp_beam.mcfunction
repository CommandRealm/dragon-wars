scoreboard players set @s swap_time 350
execute anchored eyes positioned ^ ^ ^3.5 run function item:shooting_tp
scoreboard players set @s drop_rod 0
execute positioned ^ ^ ^0.5 positioned ^ ^ ^1 run kill @e[type=item,nbt={Item:{id:"minecraft:ender_eye"}},sort=nearest,limit=1]
tag @a remove swapped

playsound minecraft:item.totem.use master @a ~ ~ ~ 0.9 2