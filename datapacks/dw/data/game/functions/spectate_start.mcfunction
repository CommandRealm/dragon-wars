scoreboard players set @s rc 0
gamemode spectator @s
tp @s @r[tag=playing]
team join spectator
tellraw @s [{"text":"You are now spectating! ","color":"gray"},{"text":"To return to the lobby, click "},{"text":"[here]","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":["",{"text":"Click to return to the lobby.","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/trigger back_to_lobby set 1"}}]