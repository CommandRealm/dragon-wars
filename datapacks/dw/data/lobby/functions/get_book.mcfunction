clear @s written_book
execute if score $number team matches 2 run replaceitem entity @s[tag=!building] hotbar.8 written_book{echest:1,display:{Name:'[{"text":"Team ","bold":true,"italic":false,"color":"dark_red"},{"text":"Selection","color":"dark_blue","bold":true,"italic":false}]'},author:'Command Realm',pages:['[{"text":"-TEAM ","color":"dark_red","bold":true},{"text":"SELECTION-","color":"dark_blue","bold":true},{"text":"\\nClick the text of the team you want to join.","color":"black","bold":false},{"text":"\\n[LEAVE] ","color":"gray","hoverEvent":{"action":"show_text","value":"Click to leave your team. \\nYou will be placed on a team when the game starts."},"clickEvent":{"action":"run_command","value":"/trigger select_team set 10"}},{"text":"\\n[RED]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger select_team set 1"}},{"text":"\\n[BLUE]","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger select_team set 2"}}]'],"title":"easter_egg",TeamBook:1}
execute if score $number team matches 3 run replaceitem entity @s[tag=!building] hotbar.8 written_book{echest:1,display:{Name:'[{"text":"Team ","bold":true,"italic":false,"color":"dark_red"},{"text":"Selection","color":"dark_blue","bold":true,"italic":false}]'},author:'Command Realm',pages:['[{"text":"-TEAM ","color":"dark_red","bold":true},{"text":"SELECTION-","color":"dark_blue","bold":true},{"text":"\\nClick the text of the team you want to join.","color":"black","bold":false},{"text":"\\n[LEAVE] ","color":"gray","hoverEvent":{"action":"show_text","value":"Click to leave your team. \\nYou will be placed on a team when the game starts."},"clickEvent":{"action":"run_command","value":"/trigger select_team set 10"}},{"text":"\\n[RED]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger select_team set 1"}},{"text":"\\n[BLUE]","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger select_team set 2"}},{"text":"\\n[YELLOW]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger select_team set 3"}}]'],"title":"easter_egg",TeamBook:1}
execute if score $number team matches 4 run replaceitem entity @s[tag=!building] hotbar.8 written_book{echest:1,display:{Name:'[{"text":"Team ","bold":true,"italic":false,"color":"dark_red"},{"text":"Selection","color":"dark_blue","bold":true,"italic":false}]'},author:'Command Realm',pages:['[{"text":"-TEAM ","color":"dark_red","bold":true},{"text":"SELECTION-","color":"dark_blue","bold":true},{"text":"\\nClick the text of the team you want to join.","color":"black","bold":false},{"text":"\\n[LEAVE] ","color":"gray","hoverEvent":{"action":"show_text","value":"Click to leave your team. \\nYou will be placed on a team when the game starts."},"clickEvent":{"action":"run_command","value":"/trigger select_team set 10"}},{"text":"\\n[RED]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger select_team set 1"}},{"text":"\\n[BLUE]","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger select_team set 2"}},{"text":"\\n[YELLOW]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger select_team set 3"}},{"text":"\\n[GREEN]","color":"green","clickEvent":{"action":"run_command","value":"/trigger select_team set 4"}}]'],"title":"easter_egg",TeamBook:1}
execute if score $number team matches 5 run replaceitem entity @s[tag=!building] hotbar.8 written_book{echest:1,display:{Name:'[{"text":"Team ","bold":true,"italic":false,"color":"dark_red"},{"text":"Selection","color":"dark_blue","bold":true,"italic":false}]'},author:'Command Realm',pages:['[{"text":"-TEAM ","color":"dark_red","bold":true},{"text":"SELECTION-","color":"dark_blue","bold":true},{"text":"\\nClick the text of the team you want to join.","color":"black","bold":false},{"text":"\\n[LEAVE] ","color":"gray","hoverEvent":{"action":"show_text","value":"Click to leave your team. \\nYou will be placed on a team when the game starts."},"clickEvent":{"action":"run_command","value":"/trigger select_team set 10"}},{"text":"\\n[RED]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger select_team set 1"}},{"text":"\\n[BLUE]","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger select_team set 2"}},{"text":"\\n[YELLOW]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger select_team set 3"}},{"text":"\\n[GREEN]","color":"green","clickEvent":{"action":"run_command","value":"/trigger select_team set 4"}},{"text":"\\n[GRAY]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger select_team set 5"}}]'],"title":"easter_egg",TeamBook:1}
kill @e[type=item,distance=..15,nbt={Item:{id:"minecraft:written_book"}},sort=nearest,limit=1]