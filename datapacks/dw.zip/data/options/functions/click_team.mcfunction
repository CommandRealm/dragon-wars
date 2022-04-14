summon area_effect_cloud -1.18 68.4 48.9 {Tags:["check_sign","remove","check_team"],Duration:20}
summon area_effect_cloud -1.24 68.4 48.9 {Tags:["check_sign","remove","check_team"],Duration:20}
summon area_effect_cloud -1.12 68.4 48.9 {Tags:["check_sign","remove","check_team"],Duration:20}
summon area_effect_cloud -1.82 68.4 48.9 {Tags:["check_sign","add","check_team"],Duration:20}
summon area_effect_cloud -1.88 68.4 48.9 {Tags:["check_sign","add","check_team"],Duration:20}
summon area_effect_cloud -1.76 68.4 48.9 {Tags:["check_sign","add","check_team"],Duration:20}
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_team] run scoreboard players remove $number team 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_team] run function options:add_team
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_team] if entity @s[distance=..6] positioned ^ ^ ^0.05 run function options:click_team
kill @e[tag=check_sign]