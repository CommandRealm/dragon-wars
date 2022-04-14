# called when we drop the death scroll
clear @s filled_map
give @s netherite_hoe{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0, UUID:[I; 100, 100, 100, 100]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1024,Operation:0, UUID:[I; 101, 101, 101, 101]}],HideFlags:63,echest:1,display:{Lore:['{"text":"Drop to receive a powerful melee weapon that lowers the user\'s max health.","italic":false,"color":"gray"}','[{"text":"9","color":"white","italic":false},{"text":" Attack","color":"gray"},{"text":" Damage","color":"dark_red"}]'],Name:'[{"text":"Death\'s ","color":"dark_gray","italic":false,"bold":false},{"text":"Scythe","color":"gray"}]'}}
scoreboard players reset @s use_d_scroll
