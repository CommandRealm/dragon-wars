item replace entity @s[tag=playing] inventory.8 with arrow 10
function cosmetic:sword
give @s[tag=playing] bow{HideFlags:63,KillOnDeath:1,Unbreakable:1b,display:{Lore:['{"text":"A normal bow.","italic":false,"color":"red"}'],Name:'{"text":"Bow","color":"red","italic":false}'}}
item replace entity @s[tag=playing] armor.head with dragon_head{KillOnDeath:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:63,display:{Lore:['{"text":"The head of a dragon.","italic":false,"color":"dark_purple"}'],Name:'{"text":"Dragon Head","color":"dark_purple","italic":false}'}}