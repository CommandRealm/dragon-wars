kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}}]
clear @s knowledge_book{book_type:2}
replaceitem entity @s[tag=!building,scores={ready=0}] hotbar.2 knowledge_book{book_type:2,echest:1,Recipes:[{id:"minecraft:book"}],display:{Name:'[{"text":"Press ","color":"light_purple","bold":true,"italic":false},{"keybind":"key.use"},{"text":" to join!"}]'}}