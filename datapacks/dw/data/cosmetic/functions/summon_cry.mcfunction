execute if entity @a[gamemode=spectator,team=!spectator,tag=use_head] run summon armor_stand ~3 ~ ~ {NoBasePlate:1b,Rotation:[90.0f,0.0f],Invulnerable:1b,Invisible:0b,Marker:1b,Tags:["die","cosmetic_cry","cosmetic_get_head"],Pose:{LeftArm:[239f,360f,334f],RightArm:[223f,324f,0f],Head:[28f,0f,0f]},ShowArms:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{}]}
tag @r[tag=use_head] add using_head
execute as @r[tag=using_head] at @s run loot replace entity @e[tag=cosmetic_get_head,sort=random,limit=1] armor.head loot minecraft:head
tag @a[tag=using_head] remove use_head
tag @a[tag=using_head] remove using_head
tag @e[type=bat,tag=cosmetic_get_head] remove cosmetic_get_head
execute if entity @a[gamemode=spectator,team=!spectator,tag=use_head] run summon armor_stand ~ ~ ~-3 {NoBasePlate:1b,Rotation:[0.0f,0.0f],Invulnerable:1b,Invisible:0b,Marker:1b,Tags:["die","cosmetic_cry","cosmetic_get_head"],Pose:{LeftArm:[239f,360f,334f],RightArm:[223f,324f,0f],Head:[28f,0f,0f]},ShowArms:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{}]}
tag @r[tag=use_head] add using_head
execute as @r[tag=using_head] at @s run loot replace entity @e[tag=cosmetic_get_head,sort=random,limit=1] armor.head loot minecraft:head
tag @a[tag=using_head] remove use_head
tag @a[tag=using_head] remove using_head
tag @e[type=bat,tag=cosmetic_get_head] remove cosmetic_get_head
execute if entity @a[gamemode=spectator,team=!spectator,tag=use_head] run summon armor_stand ~ ~ ~3 {NoBasePlate:1b,Rotation:[180.0f,0.0f],Invulnerable:1b,Invisible:0b,Marker:1b,Tags:["die","cosmetic_cry","cosmetic_get_head","cosmetic_get_head"],Pose:{LeftArm:[239f,360f,334f],RightArm:[223f,324f,0f],Head:[28f,0f,0f]},ShowArms:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{}]}
tag @r[tag=use_head] add using_head
execute as @r[tag=using_head] at @s run loot replace entity @e[tag=cosmetic_get_head,sort=random,limit=1] armor.head loot minecraft:head
tag @a[tag=using_head] remove use_head
tag @a[tag=using_head] remove using_head
execute if entity @a[gamemode=spectator,team=!spectator,tag=use_head] run summon armor_stand ~-3 ~ ~ {NoBasePlate:1b,Rotation:[-90.0f,0.0f],Invulnerable:1b,Invisible:0b,Marker:1b,Tags:["die","cosmetic_cry","cosmetic_get_head","cosmetic_get_head"],Pose:{LeftArm:[239f,360f,334f],RightArm:[223f,324f,0f],Head:[28f,0f,0f]},ShowArms:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{}]}
tag @r[tag=use_head] add using_head
execute as @r[tag=using_head] at @s run loot replace entity @e[tag=cosmetic_get_head,sort=random,limit=1] armor.head loot minecraft:head
tag @a[tag=using_head] remove use_head
tag @a[tag=using_head] remove using_head
tag @e[type=armor_stand,tag=cosmetic_get_head] remove cosmetic_get_head
execute as @e[tag=cosmetic_cry,type=armor_stand] at @s unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:player_head"}]}] run kill @s