tag @s remove auto-ready
tellraw @s {"text":"You will no longer auto-ready.","color":"red"}
playsound minecraft:block.bell.use master @s ~ ~ ~ 1 2
scoreboard players set @s auto-ready 0
scoreboard players enable @s auto-ready