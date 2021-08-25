
summon area_effect_cloud -5.9 68.4 47.18 {Tags:["check_sign","add","check_k_criteria"],Duration:20}
summon area_effect_cloud -5.9 68.4 47.24 {Tags:["check_sign","add","check_k_criteria"],Duration:20}
summon area_effect_cloud -5.9 68.4 47.12 {Tags:["check_sign","add","check_k_criteria"],Duration:20}
summon area_effect_cloud -5.9 68.4 47.82 {Tags:["check_sign","remove","check_k_criteria"],Duration:20}
summon area_effect_cloud -5.9 68.4 47.88 {Tags:["check_sign","remove","check_k_criteria"],Duration:20}
summon area_effect_cloud -5.9 68.4 47.76 {Tags:["check_sign","remove","check_k_criteria"],Duration:20}
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_k_criteria] run scoreboard players remove $number set_kills 10
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_k_criteria] run function options:add_kills
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_k_criteria] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:click_kill
kill @e[tag=check_sign]