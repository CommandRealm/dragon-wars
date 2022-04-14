kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}}]
clear @s knowledge_book{book_type:1}
item replace entity @s[tag=!building] hotbar.6 with knowledge_book{book_type:1,echest:1,Recipes:[{id:"minecraft:book"}],display:{Name:'[{"text":"Press ","color":"white","bold":true,"italic":false},{"keybind":"key.use"},{"text":" to spectate!"}]'}}