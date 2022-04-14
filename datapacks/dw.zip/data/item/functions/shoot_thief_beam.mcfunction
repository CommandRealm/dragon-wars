scoreboard players set @s calculate 350
execute anchored eyes positioned ^ ^ ^3.5 run function item:shooting_thief
scoreboard players set @s drop_thief_beam 0
execute positioned ^ ^ ^0.5 positioned ^ ^ ^1 run kill @e[type=item,nbt={Item:{id:"minecraft:magma_cream"}},sort=nearest,limit=1]
tag @a remove swapped

playsound minecraft:item.totem.use master @a ~ ~ ~ 0.7 2