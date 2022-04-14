execute as @e[type=bat,tag=cosmetic_ghost] at @s run tp @e[tag=cosmetic_ghost,type=armor_stand,distance=..1,limit=1] @s
execute as @e[type=bat,tag=cosmetic_ghost] at @s run particle cloud ~ ~1.25 ~ 0.15 0.15 0.15 0.025 5
effect give @e[type=bat,tag=cosmetic_ghost] invisibility 1000 255 true