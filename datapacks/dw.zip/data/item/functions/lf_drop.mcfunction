execute as @a[scores={drop_armor=1..},gamemode=adventure] at @s run function item:equip_armor
execute as @a[scores={drop_brew=1..},gamemode=adventure] at @s run function item:brew
execute as @e[type=item,nbt={Item:{id:"minecraft:tnt"},Age:1s}] at @s run function item:throw_tnt
execute as @a[scores={drop_rod=1..}] at @s run function item:shoot_tp_beam
execute as @a[scores={drop_jump=1..}] at @s run function item:tornado_jump
execute as @a[scores={drop_thief_beam=1..}] at @s run function item:shoot_thief_beam
execute as @a[scores={drop_reflector=1..}] at @s run function item:use_reflector

clear @a glass_bottle