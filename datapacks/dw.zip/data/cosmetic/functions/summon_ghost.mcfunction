execute if entity @a[gamemode=spectator,team=!spectator,tag=use_head] run summon bat ^ ^ ^5 {Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:10000,show_particles:0b}],Tags:["die","cosmetic_ghost"]}
execute if entity @a[gamemode=spectator,team=!spectator,tag=use_head] run summon armor_stand ^ ^ ^5 {Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["die","cosmetic_ghost","cosmetic_get_head"]}
tag @r[tag=use_head] add using_head
execute as @r[tag=using_head] at @s run loot replace entity @e[tag=cosmetic_get_head,sort=random,limit=1] armor.head loot minecraft:head
tag @a[tag=using_head] remove use_head
tag @a[tag=using_head] remove using_head
tag @e[type=bat,tag=cosmetic_get_head] remove cosmetic_get_head
execute if entity @a[gamemode=spectator,team=!spectator,tag=use_head] positioned ~2 ~ ~ run summon bat ^ ^ ^5 {Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:10000,show_particles:0b}],Tags:["die","cosmetic_ghost"]}
execute if entity @a[gamemode=spectator,team=!spectator,tag=use_head] positioned ~2 ~ ~ run summon armor_stand ^ ^ ^5 {Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["die","cosmetic_ghost","cosmetic_get_head"]}
tag @r[tag=use_head] add using_head
execute as @r[tag=using_head] at @s run loot replace entity @e[tag=cosmetic_get_head,sort=random,limit=1] armor.head loot minecraft:head
tag @a[tag=using_head] remove use_head
tag @a[tag=using_head] remove using_head
tag @e[type=bat,tag=cosmetic_get_head] remove cosmetic_get_head
execute if entity @a[gamemode=spectator,team=!spectator,tag=use_head] positioned ~-2 ~ ~ run summon bat ^ ^ ^5 {Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:10000,show_particles:0b}],Tags:["die","cosmetic_ghost"]}
execute if entity @a[gamemode=spectator,team=!spectator,tag=use_head] positioned ~-2 ~ ~ run summon armor_stand ^ ^ ^5 {Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["die","cosmetic_ghost","cosmetic_get_head","cosmetic_get_head"]}
tag @r[tag=use_head] add using_head
execute as @r[tag=using_head] at @s run loot replace entity @e[tag=cosmetic_get_head,sort=random,limit=1] armor.head loot minecraft:head
tag @a[tag=using_head] remove use_head
tag @a[tag=using_head] remove using_head
tag @e[type=armor_stand,tag=cosmetic_get_head] remove cosmetic_get_head
execute as @e[tag=cosmetic_ghost,type=armor_stand] at @s unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:player_head"}]}] run kill @s
effect give @e[type=bat,tag=cosmetic_ghost] invisibility 1000 255 true