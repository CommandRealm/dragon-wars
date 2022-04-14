# called when the thief beam finds a player

scoreboard players set @s calculate 0
tag @a[gamemode=adventure,distance=..2] add swapped

execute unless entity @p[tag=swapped,nbt={SelectedItem:{}}] run item replace entity @s weapon.mainhand from entity @p[tag=swapped] weapon.offhand
execute unless entity @p[tag=swapped,nbt={SelectedItem:{}}] run item replace entity @p[tag=swapped] weapon.offhand with air

execute if entity @p[tag=swapped,nbt={SelectedItem:{}}] run item replace entity @s weapon.mainhand from entity @p[tag=swapped] weapon.mainhand
execute if entity @p[tag=swapped,nbt={SelectedItem:{}}] run item replace entity @p[tag=swapped] weapon.mainhand with air


particle item gold_block ~ ~1 ~ 0.2 0.2 0.2 0.5 100
playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.5 0.67

execute as @a[tag=swapped] at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.5 0.67
tellraw @a[tag=swapped] [{"text":"- ","color":"gray"},{"text":"Someone stole your item","color":"red"},{"text":"!","color":"gray"}]

tag @a remove swapped