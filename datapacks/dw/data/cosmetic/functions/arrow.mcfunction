execute as @a[scores={celebration=79,celeb_number=14}] at @s run function cosmetic:summon_arrow
execute as @a[scores={celebration=59,celeb_number=14}] at @s run function cosmetic:summon_arrow
execute as @a[scores={celebration=39,celeb_number=14}] at @s run function cosmetic:summon_arrow
execute as @a[scores={celebration=19,celeb_number=14}] at @s run function cosmetic:summon_arrow
execute as @a[scores={celebration=74,celeb_number=14}] at @s run function cosmetic:summon_arrow
execute as @a[scores={celebration=54,celeb_number=14}] at @s run function cosmetic:summon_arrow
execute as @a[scores={celebration=34,celeb_number=14}] at @s run function cosmetic:summon_arrow
execute as @a[scores={celebration=14,celeb_number=14}] at @s run function cosmetic:summon_arrow
scoreboard players add $color arrow_rain 1500
execute as @e[tag=rainbow_arrow,type=arrow,nbt={inGround:0b}] at @s store result entity @s Color int 1 run scoreboard players get $color arrow_rain