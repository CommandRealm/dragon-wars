scoreboard players set $mod rand_cosmetic 15
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand rand_cosmetic run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand rand_cosmetic %= $mod rand_cosmetic
kill @e[type=area_effect_cloud,tag=random]
execute if score $rand rand_cosmetic matches 0 run function cosmetic:unlock_note
execute if score $rand rand_cosmetic matches 1 run function cosmetic:unlock_cloud
execute if score $rand rand_cosmetic matches 2 run function cosmetic:unlock_ink
execute if score $rand rand_cosmetic matches 3 run function cosmetic:unlock_stabby
execute if score $rand rand_cosmetic matches 4 run function cosmetic:unlock_boom_doom
execute if score $rand rand_cosmetic matches 5 run function cosmetic:unlock_chosen_one
execute if score $rand rand_cosmetic matches 6 run function cosmetic:unlock_final_wrath
execute if score $rand rand_cosmetic matches 7 run function cosmetic:unlock_swordie
execute if score $rand rand_cosmetic matches 8 run function cosmetic:unlock_idk
execute if score $rand rand_cosmetic matches 9 run function cosmetic:unlock_unicorn
execute if score $rand rand_cosmetic matches 10 run function cosmetic:unlock_egg
execute if score $rand rand_cosmetic matches 11 run function cosmetic:unlock_ghosts
execute if score $rand rand_cosmetic matches 12 run function cosmetic:unlock_arrow_rain
execute if score $rand rand_cosmetic matches 13 run function cosmetic:unlock_dab
execute if score $rand rand_cosmetic matches 14 run function cosmetic:unlock_cry