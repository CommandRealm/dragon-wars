scoreboard players set @s warning 160
tag @s[nbt={Inventory:[{id:"minecraft:firework_rocket"}]}] add get_one_firework
clear @s firework_rocket
give @s[tag=get_one_firework] firework_rocket{HideFlags:63,display:{Name:'{"italic":false,"color":"yellow","text":"Firework"}'},Fireworks:{Flight:1}} 1
tag @s remove get_one_firework