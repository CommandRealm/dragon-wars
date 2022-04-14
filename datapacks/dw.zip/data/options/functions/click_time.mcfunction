
summon area_effect_cloud 6.9 68.4 43.18 {Tags:["check_sign","remove","check_time"],Duration:20}
summon area_effect_cloud 6.9 68.4 43.24 {Tags:["check_sign","remove","check_time"],Duration:20}
summon area_effect_cloud 6.9 68.4 43.12 {Tags:["check_sign","remove","check_time"],Duration:20}
summon area_effect_cloud 6.9 68.4 43.82 {Tags:["check_sign","add","check_time"],Duration:20}
summon area_effect_cloud 6.9 68.4 43.88 {Tags:["check_sign","add","check_time"],Duration:20}
summon area_effect_cloud 6.9 68.4 43.76 {Tags:["check_sign","add","check_time"],Duration:20}
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_time] run scoreboard players remove $number set_time 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_time] run function options:add_time
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_time] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:click_time
kill @e[tag=check_sign]