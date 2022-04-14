# caled when it goes to time

scoreboard players set $mod random 7
function random:random
tellraw @a[tag=playing] [{"text":"- ","color":"gray"},{"text":"🗡","color":"light_purple","bold":true},{"text":" Random map has been selected","color":"white"},{"text":".","color":"gray"}]
function game:competitive/map/map_selection_over