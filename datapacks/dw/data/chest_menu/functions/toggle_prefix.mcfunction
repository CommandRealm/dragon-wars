execute if entity @s[tag=true_gamer] run tag @s add toggle_name_prefix
tag @s add true_gamer
tag @s[tag=toggle_name_prefix] remove true_gamer
team join lobby @s[tag=!true_gamer]
team join test @s[tag=!true_gamer,tag=test]
team join help @s[tag=!true_gamer,tag=help]
team join bld @s[tag=!true_gamer,tag=bld]
team join srbld @s[tag=!true_gamer,tag=srbld]
team join prg @s[tag=!true_gamer,tag=prg]
team join srprg @s[tag=!true_gamer,tag=srprg]
team join lead @s[tag=!true_gamer,tag=lead]
team join true_gamer @s[tag=true_gamer]
function chest_menu:start_advancement_unlocks
tag @s remove toggle_name_prefix