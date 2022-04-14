scoreboard players set @s l_blast_timer 85
scoreboard players set @s drop_e_crystal 0
kill @e[type=item,nbt={Item:{id:"minecraft:end_crystal"}},sort=nearest,limit=1,tag=!unusable]
effect give @s levitation 3 5
playsound minecraft:item.trident.hit_ground master @a[tag=!playing] ~ ~ ~ 1 0
playsound minecraft:block.beacon.power_select master @a[tag=!playing] ~ ~ ~ 1 1.75
advancement grant @s only minecraft:custom/use_levitation_blast