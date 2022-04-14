execute as @a[tag=playing] at @s run scoreboard players operation @s check_kills = @s kills
execute as @a[tag=playing] at @s run scoreboard players operation @s check_kills -= $number check_kills
tag @a[scores={check_kills=0..},tag=playing] add celebration
execute if entity @a[scores={check_kills=0..},tag=playing] as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100000 0.75
execute if entity @a[scores={check_kills=0..},tag=playing] run gamemode spectator @a[scores={check_kills=..-1},tag=playing]
execute if entity @a[scores={check_kills=0..},tag=playing] run scoreboard players set $time cooldown 100
execute if entity @a[scores={check_kills=0..},tag=playing] run function game:kill_criteria_end