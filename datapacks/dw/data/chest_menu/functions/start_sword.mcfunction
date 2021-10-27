function chest_menu:clear
item replace entity @s enderchest.18 with barrier{KillWhenDropped:1,display:{Name:'{"text":"Back","color":"red","italic":false}'}}

item replace entity @s enderchest.0 with gray_stained_glass_pane{KillWhenDropped:1,display:{Name:'{"text":"Stone Sword","color":"gray","italic":false,"bold":true}'},ChestSword:0}
item replace entity @s[scores={sword=0}] enderchest.0 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Stone Sword","color":"gray","italic":false,"bold":true}'}}
item replace entity @s enderchest.1 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"The Destroyer","color":"green","italic":false,"bold":true}'},ChestSword:1}
item replace entity @s[scores={sword=1}] enderchest.1 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"The Destroyer","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.2 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"The Peacekeeper","color":"green","italic":false,"bold":true}'},ChestSword:2}
item replace entity @s[scores={sword=2}] enderchest.2 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"The Peacekeeper","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.3 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Kitchen Knife","color":"green","italic":false,"bold":true}'},ChestSword:3}
item replace entity @s[scores={sword=3}] enderchest.3 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Kitchen Knife","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.4 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Pocket Knife","color":"green","italic":false,"bold":true}'},ChestSword:4}
item replace entity @s[scores={sword=4}] enderchest.4 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Pocket Knife","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.5 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Old Reliable","color":"green","italic":false,"bold":true}'},ChestSword:5}
item replace entity @s[scores={sword=5}] enderchest.5 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Old Reliable","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.6 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"The Sword of All Swords","color":"green","italic":false,"bold":true}'},ChestSword:6}
item replace entity @s[scores={sword=6}] enderchest.6 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"The Sword of All Swords","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.7 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Smite V","color":"green","italic":false,"bold":true}'},ChestSword:7}
item replace entity @s[scores={sword=7}] enderchest.7 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Smite V","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.8 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Sword of The Deep","color":"green","italic":false,"bold":true}'},ChestSword:8}
item replace entity @s[scores={sword=8}] enderchest.8 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Sword of The Deep","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.9 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Bone Breaker","color":"green","italic":false,"bold":true}'},ChestSword:9}
item replace entity @s[scores={sword=9}] enderchest.9 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Bone Breaker","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.10 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Dragon\'s Bane","color":"green","italic":false,"bold":true}'},ChestSword:10}
item replace entity @s[scores={sword=10}] enderchest.10 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Dragon\'s Bane","color":"green","italic":false,"bold":true'}}
item replace entity @s enderchest.11 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"The Dragon Blade","color":"green","italic":false,"bold":true}'},ChestSword:17}
item replace entity @s[scores={sword=17}] enderchest.11 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"The Dragon Blade","color":"green","italic":false,"bold":true'}}
item replace entity @s[tag=!sword_stabby] enderchest.12 with red_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Locked","color":"red","italic":false}'],Name:'{"text":"Stabby Stabby","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=sword_stabby] enderchest.12 with purple_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}'],Name:'{"text":"Stabby Stabby","color":"light_purple","italic":false,"bold":true}'},ChestSword:11}
item replace entity @s[scores={sword=11}] enderchest.12 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Stabby Stabby","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=!sword_boom_doom] enderchest.13 with red_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Locked","color":"red","italic":false}'],Name:'{"text":"Boom Doom","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=sword_boom_doom] enderchest.13 with purple_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}'],Name:'{"text":"Boom Doom","color":"light_purple","italic":false,"bold":true}'},ChestSword:12}
item replace entity @s[scores={sword=12}] enderchest.13 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Boom Doom","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=!sword_chosen_one] enderchest.14 with red_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Locked","color":"red","italic":false}'],Name:'{"text":"The Chosen One","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=sword_chosen_one] enderchest.14 with purple_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}'],Name:'{"text":"The Chosen One","color":"light_purple","italic":false,"bold":true}'},ChestSword:13}
item replace entity @s[scores={sword=13}] enderchest.14 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"The Chosen One","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=!sword_final_wrath] enderchest.15 with red_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Locked","color":"red","italic":false}'],Name:'{"text":"Final Wrath","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=sword_final_wrath] enderchest.15 with purple_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}'],Name:'{"text":"Final Wrath","color":"light_purple","italic":false,"bold":true}'},ChestSword:14}
item replace entity @s[scores={sword=14}] enderchest.15 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Final Wrath","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=!sword_swordie] enderchest.16 with red_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Legendary","color":"gold","italic":false}','{"text":"Locked","color":"red","italic":false}'],Name:'{"text":"Swordie Sword","color":"yellow","italic":false,"bold":true}'}}
item replace entity @s[tag=sword_swordie] enderchest.16 with orange_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Legendary","color":"gold","italic":false}'],Name:'{"text":"Swordie Sword","color":"light_purple","italic":false,"bold":true}'},ChestSword:15}
item replace entity @s[scores={sword=15}] enderchest.16 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Legendary","color":"gold","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Swordie Sword","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=!sword_idk] enderchest.17 with red_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Legendary","color":"gold","italic":false}','{"text":"Locked","color":"red","italic":false}'],Name:'{"text":"this is my sword idk","color":"yellow","italic":false,"bold":true}'}}
item replace entity @s[tag=sword_idk] enderchest.17 with orange_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Legendary","color":"gold","italic":false}'],Name:'{"text":"this is my sword idk","color":"light_purple","italic":false,"bold":true}'},ChestSword:16}
item replace entity @s[scores={sword=16}] enderchest.17 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Legendary","color":"gold","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"this is my sword idk","color":"light_purple","italic":false,"bold":true}'}}

scoreboard players set @s menu 5
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