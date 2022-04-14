tag @s[tag=iron] add get_back_iron
tag @s[tag=chain] add get_back_chain
tag @s[tag=ninja] add get_back_ninja
tag @s[tag=lucky] add get_back_lucky
tag @s[tag=spartan] add get_back_spartan
tag @s[tag=gladiator] add get_back_gladiator
tag @s[tag=jump_boost] add get_back_jump_boost
tag @s add spartan
scoreboard players set @s drop_armor 0
item replace entity @s armor.legs with leather_leggings{KillOnDeath:1,display:{color:422918,Name:'{"italic":false,"bold":true,"color":"dark_green","text":"Cactus Leggings"}'},Enchantments:[{id:"binding_curse",lvl:1},{id:"minecraft:thorns",lvl:1}],HideFlags:63,Unbreakable:1b}
item replace entity @s armor.feet with leather_boots{KillOnDeath:1,display:{color:422918,Name:'{"italic":false,"bold":true,"color":"dark_green","text":"Cactus Boots"}'},Enchantments:[{id:"binding_curse",lvl:1},{id:"minecraft:thorns",lvl:1}],HideFlags:63,Unbreakable:1b}
kill @e[type=item,distance=..10,nbt={Item:{tag:{ArmorType:4}}}]
playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 1 1
playsound minecraft:item.shield.break master @a ~ ~ ~ 0.5 1

tag @s remove chain
tag @s remove iron
tag @s remove lucky
tag @s remove ninja
tag @s remove gladiator
tag @s remove jump_boost
tag @s add used_cactus
function item:check_armor_advancement