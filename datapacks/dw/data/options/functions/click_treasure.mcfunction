
summon area_effect_cloud -5.9 68.4 47.18 {Tags:["check_sign","add","check_treasure"],Duration:20}
summon area_effect_cloud -5.9 68.4 47.24 {Tags:["check_sign","add","check_treasure"],Duration:20}
summon area_effect_cloud -5.9 68.4 47.12 {Tags:["check_sign","add","check_treasure"],Duration:20}
summon area_effect_cloud -5.9 68.4 47.82 {Tags:["check_sign","remove","check_treasure"],Duration:20}
summon area_effect_cloud -5.9 68.4 47.88 {Tags:["check_sign","remove","check_treasure"],Duration:20}
summon area_effect_cloud -5.9 68.4 47.76 {Tags:["check_sign","remove","check_treasure"],Duration:20}
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_treasure] run scoreboard players remove $time treasure_spawn 600
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_treasure] run function options:add_treasure_spawn
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_treasure] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:click_treasure
kill @e[tag=check_sign]