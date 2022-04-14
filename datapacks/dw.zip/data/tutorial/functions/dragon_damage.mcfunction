# called when the dragon takes damage
data modify entity @s NoAI set value 0b
item replace entity @s armor.chest with leather_chestplate{display:{color:0}}
execute if entity @s[tag=tutorial_dragon_2] run scoreboard players set $elytra tutorial 25