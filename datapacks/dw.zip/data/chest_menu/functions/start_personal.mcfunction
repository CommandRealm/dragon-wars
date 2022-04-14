function chest_menu:clear
item replace entity @s enderchest.18 with barrier{KillWhenDropped:1,display:{Name:'{"text":"Back","color":"red","italic":false}'}}

item replace entity @s[tag=!bar_symbol] enderchest.11 with totem_of_undying{KillWhenDropped:1,display:{Lore:['{"text":"[OFF]","color":"dark_red","italic":false}','{"text":"Changes the message that shows your elytra","color":"yellow","italic":false}','{"text":"and how many arrows you have to symbols.","color":"yellow","italic":false}'],Name:'{"text":"Action Bar Symbols","color":"red","italic":false}'}}
item replace entity @s[tag=bar_symbol] enderchest.11 with totem_of_undying{KillWhenDropped:1,display:{Lore:['{"text":"[ON]","color":"dark_green","italic":false}','{"text":"Changes the message that shows your elytra","color":"yellow","italic":false}','{"text":"and how many arrows you have to symbols.","color":"yellow","italic":false}'],Name:'{"text":"Action Bar Symbols","color":"red","italic":false}'},Enchantments:[{id:"easter_egg",lvl:1}]}
item replace entity @s[tag=drop_sword] enderchest.13 with stone_sword{HideFlags:63,Chest:1,KillWhenDropped:1,display:{Lore:['{"text":"[OFF]","color":"dark_red","italic":false}','{"text":"Your starter sword will stay in your inventory.","color":"red","italic":false}','{"text":"Toggles your starter-sword being droppable.","color":"yellow","italic":false}'],Name:'{"text":"Droppable Sword","color":"red","italic":false}'}}
item replace entity @s[tag=!drop_sword] enderchest.13 with stone_sword{HideFlags:63,Chest:1,KillWhenDropped:1,display:{Lore:['{"text":"[ON]","color":"dark_green","italic":false}','{"text":"Your starter sword will be droppable.","color":"green","italic":false}','{"text":"Toggles your starter-sword being droppable.","color":"yellow","italic":false}'],Name:'{"text":"Droppable Sword","color":"red","italic":false}'},Enchantments:[{id:"easter_egg",lvl:1}]}
item replace entity @s[tag=drop_firework] enderchest.15 with firework_rocket{HideFlags:63,Chest:1,KillWhenDropped:1,display:{Lore:['{"text":"[OFF]","color":"dark_red","italic":false}','{"text":"Your fireworks will stay in your inventory.","color":"red","italic":false}','{"text":"Toggles your fireworks being droppable.","color":"yellow","italic":false}'],Name:'{"text":"Droppable Fireworks","color":"red","italic":false}'}}
item replace entity @s[tag=!drop_firework] enderchest.15 with firework_rocket{HideFlags:63,Chest:1,KillWhenDropped:1,display:{Lore:['{"text":"[ON]","color":"dark_green","italic":false}','{"text":"Your fireworks will be droppable.","color":"green","italic":false}','{"text":"Toggles your fireworks being droppable.","color":"yellow","italic":false}'],Name:'{"text":"Droppable Fireworks","color":"red","italic":false}'},Enchantments:[{id:"easter_egg",lvl:1}]}


scoreboard players set @s menu 2
scoreboard players set @s click_1 0
scoreboard players set @s click_2 0
scoreboard players set @s click_3 0
scoreboard players set @s click_4 0
scoreboard players set @s click_5 0
scoreboard players set @s click_6 0
scoreboard players set @s click_7 0
scoreboard players set @s click_9 0
scoreboard players set @s click_10 0
scoreboard players set @s click_11 0
scoreboard players set @s click_12 0
scoreboard players set @s click_13 0
scoreboard players set @s click_14 0
scoreboard players set @s click_15 0
scoreboard players set @s click_16 0
scoreboard players set @s click_17 0
scoreboard players set @s click_18 0
scoreboard players set @s click_19 0
scoreboard players set @s click_20 0
scoreboard players set @s click_21 0