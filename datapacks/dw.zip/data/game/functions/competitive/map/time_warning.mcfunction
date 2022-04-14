# time warning
execute as @a[tag=playing,tag=!temp_victory] at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 2
execute as @a[tag=playing,tag=!temp_victory] at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 1.9
tellraw @a[tag=playing,tag=!temp_victory] [{"text":"- ","color":"gray"},{"text":"🗡","color":"light_purple","bold":true},{"text":" You have ","color":"white"},{"text":"5","color":"dark_purple","bold":true},{"text":" seconds to select a map","color":"white"},{"text":".","color":"gray"}]
