summon area_effect_cloud 2.18 68.4 48.9 {Tags:["check_sign","add","check_map"],Duration:20}
summon area_effect_cloud 2.24 68.4 48.9 {Tags:["check_sign","add","check_map"],Duration:20}
summon area_effect_cloud 2.12 68.4 48.9 {Tags:["check_sign","add","check_map"],Duration:20}
summon area_effect_cloud 2.82 68.4 48.9 {Tags:["check_sign","remove","check_map"],Duration:20}
summon area_effect_cloud 2.88 68.4 48.9 {Tags:["check_sign","remove","check_map"],Duration:20}
summon area_effect_cloud 2.76 68.4 48.9 {Tags:["check_sign","remove","check_map"],Duration:20}
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_map] run scoreboard players remove $map map_select 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_map] run function options:add_map
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_map] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:click_map
kill @e[tag=check_sign]