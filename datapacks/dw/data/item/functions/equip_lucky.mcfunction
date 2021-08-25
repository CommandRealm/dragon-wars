tag @s[tag=iron] add get_back_iron
tag @s[tag=chain] add get_back_chain
tag @s[tag=ninja] add get_back_ninja
tag @s[tag=lucky] add get_back_lucky
tag @s[tag=spartan] add get_back_spartan
tag @s[tag=gladiator] add get_back_gladiator
tag @s add lucky
scoreboard players set @s drop_armor 0
replaceitem entity @s armor.legs golden_leggings{KillOnDeath:1,display:{Name:'{"italic":false,"bold":true,"color":"gold","text":"Lucky Leggings"}'},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:63,Unbreakable:1b}
replaceitem entity @s armor.feet golden_boots{KillOnDeath:1,display:{Name:'{"italic":false,"bold":true,"color":"gold","text":"Lucky Boots"}'},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:63,Unbreakable:1b}
kill @e[type=item,distance=..10,nbt={Item:{tag:{ArmorType:3}}}]
playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 1 1
playsound minecraft:item.shield.break master @a ~ ~ ~ 0.5 1

tag @s remove chain
tag @s remove iron
tag @s remove ninja
tag @s remove gladiator
tag @s remove spartan
tag @s add used_lucky
function item:check_armor_advancement