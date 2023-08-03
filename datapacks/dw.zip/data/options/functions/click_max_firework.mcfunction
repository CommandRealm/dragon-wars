
summon area_effect_cloud 6.9 68.4 49.18 {Tags:["check_sign","remove","check_max_firework"],Duration:20}
summon area_effect_cloud 6.9 68.4 49.24 {Tags:["check_sign","remove","check_max_firework"],Duration:20}
summon area_effect_cloud 6.9 68.4 49.12 {Tags:["check_sign","remove","check_max_firework"],Duration:20}
summon area_effect_cloud 6.9 68.4 49.82 {Tags:["check_sign","add","check_max_firework"],Duration:20}
summon area_effect_cloud 6.9 68.4 49.88 {Tags:["check_sign","add","check_max_firework"],Duration:20}
summon area_effect_cloud 6.9 68.4 49.76 {Tags:["check_sign","add","check_max_firework"],Duration:20}
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_max_firework] run scoreboard players remove $number max_fireworks 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_max_firework] run function options:add_max_firework
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_max_firework] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:click_max_firework
kill @e[tag=check_sign]