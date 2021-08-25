scoreboard players set @s get_sword 0
data merge entity @e[type=item,nbt={Item:{id:"minecraft:stone_sword"}},sort=nearest,limit=1] {PickupDelay:0}
tp @e[type=item,nbt={Item:{id:"minecraft:stone_sword"}},sort=nearest,limit=1] @s
