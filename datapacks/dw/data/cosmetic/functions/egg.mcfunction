particle cloud ~ ~0.25 ~ 0.25 0.25 0.25 0 3
execute if entity @a[scores={celebration=85}] at @e[tag=cosmetic_egg] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 1.75
execute if entity @a[scores={celebration=60}] at @e[tag=cosmetic_egg] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 1.75
execute if entity @a[scores={celebration=35}] at @e[tag=cosmetic_egg] run summon armor_stand ~ ~2 ~ {Tags:["cosmetic_egg2","die"],Small:1b,ArmorItems:[{},{},{},{id:"minecraft:dragon_egg",Count:1b}],DisabledSlots:2039583,Invulnerable:1,ShowArms:1,Motion:[0.0d,1.25d,0.0d],Invisible:1,NoBasePlate:1}
execute if entity @a[scores={celebration=35}] run kill @e[tag=cosmetic_egg]
execute if entity @a[scores={celebration=20}] at @e[tag=cosmetic_egg2] run particle block dragon_egg ~ ~ ~ 0.05 0.05 0.05 0.75 40
execute if entity @a[scores={celebration=20}] at @e[tag=cosmetic_egg] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 1.75
execute if entity @a[scores={celebration=20}] at @e[tag=cosmetic_egg2] run summon armor_stand ~ ~ ~ {Tags:["cosmetic_dragon","die"],Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:dragon_head",Count:1b}],DisabledSlots:2039583,Invulnerable:1,ShowArms:1,Motion:[0.0d,0.2d,0.0d],NoBaseplate:1,NoBasePlate:1}
execute if entity @a[scores={celebration=20}] run kill @e[tag=cosmetic_egg2]