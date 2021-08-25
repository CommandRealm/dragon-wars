summon area_effect_cloud 0.18 68.4 48.9 {Tags:["check_sign","add","check_mode"],Duration:20}
summon area_effect_cloud 0.24 68.4 48.9 {Tags:["check_sign","add","check_mode"],Duration:20}
summon area_effect_cloud 0.12 68.4 48.9 {Tags:["check_sign","add","check_mode"],Duration:20}
summon area_effect_cloud 0.82 68.4 48.9 {Tags:["check_sign","remove","check_mode"],Duration:20}
summon area_effect_cloud 0.88 68.4 48.9 {Tags:["check_sign","remove","check_mode"],Duration:20}
summon area_effect_cloud 0.76 68.4 48.9 {Tags:["check_sign","remove","check_mode"],Duration:20}
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_mode] run scoreboard players remove $number mode 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_mode] run function options:add_mode
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_mode] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:click_mode
kill @e[tag=check_sign]