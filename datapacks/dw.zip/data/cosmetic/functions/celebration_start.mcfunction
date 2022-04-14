
tag @s remove celebration
scoreboard players set @s celebration 99
execute if entity @s[scores={celeb_number=1}] run function cosmetic:summon_firework
execute if entity @s[scores={celeb_number=5}] run effect give @s levitation 5 30 true
scoreboard players set $color arrow_rain 16701680
execute if entity @s[scores={celeb_number=6}] run summon boat ~ ~.5 ~ {Tags:["die"]}
execute if entity @s[scores={celeb_number=7}] run summon armor_stand ~1 ~ ~1 {Tags:["die","celeb_flower"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_orchid",Count:1b}]}
execute if entity @s[scores={celeb_number=7}] run summon armor_stand ~-1 ~ ~1 {Tags:["die","celeb_flower"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:birch_sapling",Count:1b}]}
execute if entity @s[scores={celeb_number=7}] run summon armor_stand ~1 ~ ~-1 {Tags:["die","celeb_flower"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:wither_rose",Count:1b}]}
execute if entity @s[scores={celeb_number=7}] run summon armor_stand ~-1 ~ ~-1 {Tags:["die","celeb_flower"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:pink_tulip",Count:1b}]}
execute if entity @s[scores={celeb_number=8}] run summon armor_stand ~.66 ~0.01 ~0.85 {Rotation:[0.0f,0.0f,0.0f],ShowArms:1b,Pose:{RightArm:[-90.0f,90.0f,0.0f]},Tags:["die","celeb_shield"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,HandItems:[{id:"minecraft:shield",Count:1b},{}]}
execute if entity @s[scores={celeb_number=8}] run summon armor_stand ~-0.66 ~0.01 ~-0.85 {Rotation:[180.0f,0.0f,0.0f],ShowArms:1b,Pose:{RightArm:[-90.0f,90.0f,0.0f]},Tags:["die","celeb_shield"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,HandItems:[{id:"minecraft:shield",Count:1b},{}]}
execute if entity @s[scores={celeb_number=8}] run summon armor_stand ~-.85 ~0.01 ~ {Rotation:[90.0f,0.0f,0.0f],ShowArms:1b,Pose:{RightArm:[90.0f,90.0f,0.0f]},Tags:["die","celeb_shield"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,HandItems:[{id:"minecraft:shield",Count:1b},{}]}
execute if entity @s[scores={celeb_number=8}] run summon armor_stand ~.85 ~0.01 ~-0.66 {Rotation:[-90.0f,0.0f,0.0f],ShowArms:1b,Pose:{RightArm:[-90.0f,90.0f,0.0f]},Tags:["die","celeb_shield"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,HandItems:[{id:"minecraft:shield",Count:1b},{}]}
effect give @s[scores={celeb_number=8}] slowness 5 255 true
effect give @s[scores={celeb_number=8}] jump_boost 5 200 true
effect give @s[scores={celeb_number=8}] blindness 5 200 true
execute if entity @s[scores={celeb_number=9}] run summon armor_stand ~ ~ ~ {Tags:["die","celeb_jukebox"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:jukebox",Count:1b}]}
execute if entity @s[scores={celeb_number=9}] run playsound minecraft:music_disc.cat master @a ~ ~ ~ 1 2
execute if entity @s[scores={celeb_number=10}] run summon area_effect_cloud ^ ^ ^40 {Duration:98,Tags:["die","celeb_beam","celeb_beam_tp"]}
execute if entity @s[scores={celeb_number=10}] at @e[tag=celeb_beam_tp,type=area_effect_cloud] run tp @e[tag=celeb_beam_tp,type=area_effect_cloud] ~ ~ ~ facing entity @s
tag @e[type=area_effect_cloud,tag=celeb_beam_tp] remove celeb_beam_tp
execute if entity @s[scores={celeb_number=11}] run summon horse ~ ~ ~ {Invulnerable:1b,Tame:1,SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{HideFlags:63,Enchantments:[{id:"binding_curse",lvl:1}]}},Variant:0,Tags:["die","unicorn"]}
execute if entity @s[scores={celeb_number=11}] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["die","unicorn_horn"],ArmorItems:[{},{},{},{id:"minecraft:end_rod",Count:1b}]}
execute if entity @s[scores={celeb_number=12}] run summon armor_stand ~ ~-1.25 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["die","cosmetic_egg"],ArmorItems:[{},{},{},{id:"minecraft:dragon_egg",Count:1b}]}
execute if entity @s[scores={celeb_number=13}] run tag @a[team=!spectator,gamemode=spectator] add use_head
execute if entity @s[scores={celeb_number=13}] run function cosmetic:summon_ghost
execute if entity @s[scores={celeb_number=13}] run tag @a[team=!spectator,gamemode=spectator] remove use_head
execute if entity @s[scores={celeb_number=15}] run function cosmetic:summon_dab
execute at @e[tag=cosmetic_dab] run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 0.85
execute if entity @s[scores={celeb_number=16}] run tag @a[team=!spectator,gamemode=spectator] add use_head
execute if entity @s[scores={celeb_number=16}] run function cosmetic:summon_cry
execute if entity @s[scores={celeb_number=16}] run tag @a[team=!spectator,gamemode=spectator] remove use_head
execute if entity @s[scores={celeb_number=18}] run summon ender_dragon ~ ~ ~ {Tags:"die"}