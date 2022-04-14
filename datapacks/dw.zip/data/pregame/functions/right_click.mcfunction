item replace entity @s[scores={ready=0}] hotbar.4 with knowledge_book{not_clickable:1,Recipes:[],display:{Name:'[{"text":"Click","color":"light_purple","bold":true,"italic":false},{"text":" to ready up.","color":"dark_purple","bold":false}]',Lore:['[{"text":"Drop to reset your lobby position.","color":"gray","italic":false}]']}}
item replace entity @s[scores={ready=1}] hotbar.4 with knowledge_book{not_clickable:1,Recipes:[],display:{Name:'[{"text":"Click","color":"white","bold":true,"italic":false},{"text":" to unready.","color":"gray","bold":false}]',Lore:['[{"text":"Drop to reset your lobby position.","color":"gray","italic":false}]']},Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],HideFlags:63}
scoreboard players add @s[scores={rc=1..}] ready 1
execute as @s[scores={rc=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.75 1.5
execute as @s[scores={rc=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
clear @s[scores={rc=1..}] knowledge_book
scoreboard players set @s[scores={rc=1..}] rc 0