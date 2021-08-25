tellraw @s {"text":"You cannot do this now.","color":"red"}
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1000000 0
scoreboard players set @s back_to_lobby 0
scoreboard players enable @s back_to_lobby