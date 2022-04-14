# time warning
execute as @a[tag=playing,tag=striker] at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 2
execute as @a[tag=playing,tag=striker] at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 1.9
tellraw @a[tag=playing,tag=striker] [{"text":"- ","color":"gray"},{"text":"🗡","color":"light_purple","bold":true},{"text":"You have ","color":"white"},{"text":"10","color":"dark_purple","bold":true},{"text":"seconds to strike an item.","color":"white"},{"text":".","color":"gray"}]
