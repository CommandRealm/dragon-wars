# called to start the striker

tp @a[tag=playing,tag=striker] 52 72 -8 -90 5

tellraw @a[tag=playing,tag=striker] [{"text":"- ","color":"gray"},{"text":"🗡","color":"light_purple","bold":true},{"text":" Right click a sign to disable an item for the game","color":"white"},{"text":".","color":"gray"}]


execute store result score $item_count calculate if entity @e[type=item,tag=item_model]
execute store result score $calculate calculate if entity @e[type=item,tag=item_model]

execute as @a[tag=playing,tag=striker] at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~
execute as @a[tag=playing,tag=striker] at @s run particle firework ~ ~0.5 ~ 0.1 0.1 0.1 0.25 100
effect clear @a[tag=playing]