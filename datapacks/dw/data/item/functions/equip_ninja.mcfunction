tag @s[tag=iron] add get_back_iron
tag @s[tag=chain] add get_back_chain
tag @s[tag=ninja] add get_back_ninja
tag @s[tag=lucky] add get_back_lucky
tag @s[tag=spartan] add get_back_spartan
tag @s[tag=gladiator] add get_back_gladiator
tag @s add ninja
scoreboard players set @s drop_armor 0
replaceitem entity @s armor.legs leather_leggings{HideFlags:63,KillOnDeath:1,display:{color:8961023,Name:'{"italic":false,"bold":true,"color":"dark_aqua","text":"Ninja Leggings"}'},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.movement_speed", Name:"generic.movement_speed", Amount:0.025, Operation:0, UUID:[I; 5, 5, 5, 5]},{AttributeName:"generic.armor", Name:"generic.armor", Amount:2.0, Operation:0, UUID:[I; 6, 6, 6, 6]}],Unbreakable:1b}
replaceitem entity @s armor.feet leather_boots{KillOnDeath:1,display:{color:8961023,Name:'{"italic":false,"bold":true,"color":"dark_aqua","text":"Ninja Boots"}'},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:63,Unbreakable:1b}
kill @e[type=item,distance=..10,nbt={Item:{tag:{ArmorType:2}}}]
playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 1 1
playsound minecraft:item.shield.break master @a ~ ~ ~ 0.5 1

tag @s remove chain
tag @s remove iron
tag @s remove lucky
tag @s remove spartan
tag @s remove gladiator
tag @s add used_ninja
function item:check_armor_advancement