kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}}]
clear @s knowledge_book{book_type:2}
item replace entity @s[tag=!building] hotbar.2 with knowledge_book{book_type:2,echest:1,Recipes:[{id:"minecraft:book"}],display:{Name:'[{"text":"Press ","color":"light_purple","bold":true,"italic":false},{"keybind":"key.use"},{"text":" to join!"}]'}}