scoreboard players set @s auto-ready 5
execute if entity @s[tag=auto-ready] run function general:auto_unready_up
execute if entity @s[scores={auto-ready=5}] run function general:auto_ready_up
scoreboard players set @s auto-ready 0