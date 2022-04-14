tag @s[tag=iron] add get_back_iron
tag @s[tag=chain] add get_back_chain
tag @s[tag=ninja] add get_back_ninja
tag @s[tag=lucky] add get_back_lucky
tag @s[tag=spartan] add get_back_spartan
tag @s[tag=gladiator] add get_back_gladiator
tag @s[tag=jump_boost] add get_back_jump_boost
tag @s add chain
scoreboard players set @s drop_armor 0
item replace entity @s armor.legs with chainmail_leggings{Enchantments:[{id:"projectile_protection",lvl:4},{id:"binding_curse",lvl:1}],KillOnDeath:1,display:{Name:'{"italic":false,"bold":true,"color":"dark_gray","text":"Chainmail Leggings"}'},HideFlags:63,Unbreakable:1b}
item replace entity @s armor.feet with chainmail_boots{Enchantments:[{id:"projectile_protection",lvl:4},{id:"binding_curse",lvl:1}],KillOnDeath:1,display:{Name:'{"italic":false,"bold":true,"color":"dark_gray","text":"Chainmail Boots"}'},HideFlags:63,Unbreakable:1b}
kill @e[type=item,distance=..10,nbt={Item:{tag:{ArmorType:1}}}]
playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 1 1
playsound minecraft:item.shield.break master @a ~ ~ ~ 0.5 1

tag @s remove iron
tag @s remove ninja
tag @s remove lucky
tag @s remove spartan
tag @s remove gladiator
tag @s remove jump_boost
tag @s add used_chain
function item:check_armor_advancement