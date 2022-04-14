scoreboard players set @s get_firework 0
data merge entity @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}},sort=nearest,limit=1] {PickupDelay:0}
tp @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}},sort=nearest,limit=1] @s
