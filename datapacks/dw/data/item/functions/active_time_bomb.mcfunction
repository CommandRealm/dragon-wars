execute at @e[type=area_effect_cloud,tag=time_bomb] run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 0.015 2
execute as @e[type=area_effect_cloud,tag=time_bomb,nbt={Age:45}] at @s run function item:time_bomb_warning
execute as @e[type=area_effect_cloud,tag=time_bomb,nbt={Age:79}] at @s run function item:time_bomb_explode