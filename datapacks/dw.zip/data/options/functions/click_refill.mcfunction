
summon area_effect_cloud 6.9 68.4 45.18 {Tags:["check_sign","remove","check_refill"],Duration:20}
summon area_effect_cloud 6.9 68.4 45.24 {Tags:["check_sign","remove","check_refill"],Duration:20}
summon area_effect_cloud 6.9 68.4 45.12 {Tags:["check_sign","remove","check_refill"],Duration:20}
summon area_effect_cloud 6.9 68.4 45.82 {Tags:["check_sign","add","check_refill"],Duration:20}
summon area_effect_cloud 6.9 68.4 45.88 {Tags:["check_sign","add","check_refill"],Duration:20}
summon area_effect_cloud 6.9 68.4 45.76 {Tags:["check_sign","add","check_refill"],Duration:20}
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_refill] run scoreboard players remove $time chest_refill 600
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_refill] if score $time chest_refill matches -300 run scoreboard players set $time chest_refill -600
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_refill] run function options:add_refill
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_refill] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:click_refill
kill @e[tag=check_sign]