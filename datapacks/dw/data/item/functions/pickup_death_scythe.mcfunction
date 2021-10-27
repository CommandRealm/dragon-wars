# called when we pickup the death scythe
attribute @s generic.max_health base set 10
effect give @s wither 1 1 true
playsound minecraft:entity.sheep.shear master @a ~ ~ ~ 1 0.75
tag @s add has_death_scythe
tag @s add elytra_immune