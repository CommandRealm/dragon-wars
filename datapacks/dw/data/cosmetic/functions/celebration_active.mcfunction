scoreboard players remove @a[scores={celebration=1..}] celebration 1
execute if entity @a[scores={celeb_number=1},gamemode=adventure] run function cosmetic:firework
execute if entity @a[scores={celeb_number=2},gamemode=adventure] run function cosmetic:potion
execute if entity @a[scores={celeb_number=3},gamemode=adventure] run function cosmetic:tornado
execute if entity @a[scores={celeb_number=4},gamemode=adventure] run function cosmetic:food
execute if entity @a[scores={celeb_number=7},gamemode=adventure] run function cosmetic:flower
execute as @e[tag=celeb_jukebox] at @s run function cosmetic:jukebox
execute as @e[tag=celeb_beam,type=area_effect_cloud] at @s run function cosmetic:explosion_beam
execute as @e[tag=unicorn_horn,type=armor_stand] at @s run function cosmetic:unicorn
execute if entity @a[scores={celeb_number=12},gamemode=adventure] run function cosmetic:egg
execute if entity @a[scores={celeb_number=13},tag=playing] run function cosmetic:ghost
execute if entity @a[scores={celeb_number=14},gamemode=adventure] run function cosmetic:arrow
execute if entity @a[scores={celeb_number=15},gamemode=adventure] run function cosmetic:dab
execute if entity @a[scores={celeb_number=16},gamemode=adventure] run function cosmetic:cry
execute if entity @a[scores={celeb_number=17},gamemode=adventure] run function cosmetic:treasure
execute if entity @a[scores={celeb_number=18,celebration=1},gamemode=adventure] run kill @e[type=ender_dragon]