title @a[tag=warning,tag=playing,gamemode=adventure] times 0 20 5
title @a[tag=warning,tag=playing,gamemode=adventure] title {"text":"- ! - WARNING - ! -","color":"red"}
title @a[tag=warning,tag=playing,gamemode=adventure] subtitle [{"text":"Please return to","color":"light_purple"},{"text":" the play ","color":"gray"},{"text":"area","color":"yellow"},{"text":".","color":"gray"}]
execute as @a[tag=warning,gamemode=adventure,scores={warning=-1}] at @s run function game:start_warning
scoreboard players remove @a[scores={warning=0..}] warning 1
execute as @a[scores={warning=0}] at @s run function game:void_death