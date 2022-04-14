# called when we enter a ring

scoreboard players remove @s rings_left 1


# summoning aec so we can see if we've been through this
execute at @e[type=marker,tag=elytra_course_marker,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Duration:400,Tags:["temporary_tag","ring_id_check"]}
scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=temporary_tag] parkour_id = @s parkour_id
tag @e[type=area_effect_cloud,limit=1,tag=temporary_tag] remove temporary_tag

# time for sound
scoreboard players set @s ring_sound 6


# additional sound and particles
execute at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1
execute at @s run particle firework ~ ~ ~ 0.0 0.0 0.0 0.25 25

title @s title [{"text":""}]

title @s[scores={rings_left=2..}] subtitle ["",{"score":{"objective":"rings_left","name":"@s"},"color":"yellow","bold":true},{"text":" rings","color":"light_purple"},{"text":" left.","color":"gray"}]
title @s[scores={rings_left=1}] subtitle ["",{"score":{"objective":"rings_left","name":"@s"},"color":"yellow","bold":true},{"text":" ring","color":"light_purple"},{"text":" left.","color":"gray"}]
title @s[scores={rings_left=0}] subtitle ["",{"text":"No","color":"yellow","bold":true},{"text":" rings","color":"light_purple"},{"text":" left.","color":"gray"}]