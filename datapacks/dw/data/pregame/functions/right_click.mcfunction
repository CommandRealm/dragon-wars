replaceitem entity @a[tag=!building,scores={ready=0}] hotbar.4 knowledge_book{Recipes:[{id:"minecraft:book"}],display:{Name:'[{"text":"Press ","color":"light_purple","bold":true,"italic":false},{"keybind":"key.use"},{"text":" to play!"}]'}}
replaceitem entity @a[tag=!building,scores={ready=1}] hotbar.4 knowledge_book{Recipes:[{id:"minecraft:book"}],display:{Name:'[{"text":"Press ","color":"white","bold":true,"italic":false},{"keybind":"key.use"},{"text":" to spectate!"}]'},Enchantments:[{id:"minecraft:easter_egg",lvl:1}]}
scoreboard players add @s[scores={rc=1..}] ready 1
execute as @s[scores={rc=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.75 1.5
execute as @s[scores={rc=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
clear @s[scores={rc=1..}] knowledge_book
scoreboard players set @s[scores={rc=1..}] rc 0