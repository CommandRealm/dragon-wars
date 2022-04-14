scoreboard players set @s unready_all 0
execute if score $time unready_cool matches ..0 run tellraw @s {"text":"You can not use this right now.","color":"red"}
execute if score $time unready_cool matches 1.. run tag @a add ready_toggle
execute if score $time unready_cool matches 1.. run scoreboard players set @a ready 0
execute if score $time unready_cool matches 1.. as @a[tag=ready_toggle] at @s run function pregame:clear
execute if score $time unready_cool matches 1.. run tellraw @s {"text":"Players are now unready.","color":"green"}
execute if score $time unready_cool matches 1.. run scoreboard players set $time unready_cool -1
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.78
scoreboard players enable @s unready_all
tag @a remove ready_toggle