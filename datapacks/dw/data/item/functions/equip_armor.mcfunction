execute unless entity @s[tag=!iron,tag=!chain,tag=!ninja,tag=!lucky,tag=!spartan,tag=!gladiator] run scoreboard players set @s armor_delay 100
execute if entity @e[type=item,distance=..10,nbt={Item:{tag:{ArmorType:0}},Age:1s}] run function item:equip_iron
execute if entity @e[type=item,distance=..10,nbt={Item:{tag:{ArmorType:1}},Age:1s}] run function item:equip_chain
execute if entity @e[type=item,distance=..10,nbt={Item:{tag:{ArmorType:2}},Age:1s}] run function item:equip_ninja
execute if entity @e[type=item,distance=..10,nbt={Item:{tag:{ArmorType:3}},Age:1s}] run function item:equip_lucky
execute if entity @e[type=item,distance=..10,nbt={Item:{tag:{ArmorType:4}},Age:1s}] run function item:equip_spartan
execute if entity @e[type=item,distance=..10,nbt={Item:{tag:{ArmorType:5}},Age:1s}] run function item:equip_gladiator