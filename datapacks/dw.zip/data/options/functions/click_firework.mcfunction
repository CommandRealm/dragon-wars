
summon area_effect_cloud 6.9 68.4 47.18 {Tags:["check_sign","remove","check_firework"],Duration:20}
summon area_effect_cloud 6.9 68.4 47.24 {Tags:["check_sign","remove","check_firework"],Duration:20}
summon area_effect_cloud 6.9 68.4 47.12 {Tags:["check_sign","remove","check_firework"],Duration:20}
summon area_effect_cloud 6.9 68.4 47.82 {Tags:["check_sign","add","check_firework"],Duration:20}
summon area_effect_cloud 6.9 68.4 47.88 {Tags:["check_sign","add","check_firework"],Duration:20}
summon area_effect_cloud 6.9 68.4 47.76 {Tags:["check_sign","add","check_firework"],Duration:20}
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_firework] run scoreboard players remove $time firework_time 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_firework] run function options:add_firework
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_firework] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:click_firework
kill @e[tag=check_sign]