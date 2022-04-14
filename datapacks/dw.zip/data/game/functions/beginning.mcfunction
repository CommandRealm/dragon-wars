kill @e[type=item,nbt={Item:{tag:{Treasure:1}}}]
execute at @r[tag=playing,x=0,y=66,z=0,distance=1000..] run kill @e[type=item,distance=..600]
execute at @r[tag=playing,x=0,y=66,z=0,distance=1000..] run kill @e[type=arrow,distance=..600]

scoreboard players reset @a[tag=playing] l_blast_timer
execute as @a[tag=playing] at @s run attribute @s generic.attack_damage base set 1
scoreboard players reset @a[tag=playing] fake_strength
scoreboard players reset @a[tag=playing] use_d_scroll
execute if score $time timer matches 9960 run title @a[tag=playing] times 0 30 10
execute if score $time timer matches 9960 run title @a[tag=playing] title [{"text":"- ","color":"light_purple"},{"text":"= ","color":"dark_purple"},{"text":"- ","color":"light_purple"},{"text":"3 ","color":"dark_purple","bold":true},{"text":"- ","color":"light_purple"},{"text":"= ","color":"dark_purple"},{"text":"-","color":"light_purple"}]
execute if score $time timer matches 9960 as @a[tag=playing] at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.5 0.5
execute if score $time timer matches 9940 run title @a[tag=playing] title [{"text":"-","color":"light_purple"},{"text":"=","color":"dark_purple"},{"text":"- ","color":"light_purple"},{"text":"2 ","color":"dark_purple","bold":true},{"text":"-","color":"light_purple"},{"text":"=","color":"dark_purple"},{"text":"-","color":"light_purple"}]
execute if score $time timer matches 9940 as @a[tag=playing] at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.5 0.5
execute if score $time timer matches 9920 run title @a[tag=playing] title [{"text":"- ","color":"light_purple"},{"text":"1 ","color":"dark_purple","bold":true},{"text":"-","color":"light_purple"}]
execute if score $time timer matches 9920 as @a[tag=playing] at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.5 0.5

execute if score $time timer matches 9900 run function game:beginning_0



title @a[tag=playing] actionbar [{"text":"Tip","color":"gold"},{"text":": ","color":"gray"},{"selector":"@e[type=marker,tag=tip]"}]
