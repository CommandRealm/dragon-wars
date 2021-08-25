
summon area_effect_cloud -5.9 68.4 45.18 {Tags:["check_sign","add","check_auto_ready"],Duration:20}
summon area_effect_cloud -5.9 68.4 45.24 {Tags:["check_sign","add","check_auto_ready"],Duration:20}
summon area_effect_cloud -5.9 68.4 45.12 {Tags:["check_sign","add","check_auto_ready"],Duration:20}
summon area_effect_cloud -5.9 68.4 45.82 {Tags:["check_sign","remove","check_auto_ready"],Duration:20}
summon area_effect_cloud -5.9 68.4 45.88 {Tags:["check_sign","remove","check_auto_ready"],Duration:20}
summon area_effect_cloud -5.9 68.4 45.76 {Tags:["check_sign","remove","check_auto_ready"],Duration:20}
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_auto_ready] run scoreboard players remove $number auto_ready 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_auto_ready] run function options:add_auto_ready
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_auto_ready] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:click_auto_ready
kill @e[tag=check_sign]