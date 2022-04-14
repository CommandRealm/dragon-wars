tag @s add auto-ready
tellraw @s {"text":"You will auto-ready.","color":"green"}
playsound minecraft:block.bell.use master @s ~ ~ ~ 1 2
scoreboard players enable @s auto-ready