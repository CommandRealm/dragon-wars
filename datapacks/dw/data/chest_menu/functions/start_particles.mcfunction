function chest_menu:clear
replaceitem entity @s enderchest.18 barrier{KillWhenDropped:1,display:{Name:'{"text":"Back","color":"red","italic":false}'}}

replaceitem entity @s enderchest.0 gray_stained_glass_pane{KillWhenDropped:1,display:{Name:'{"text":"None","color":"gray","italic":false,"bold":true}'},ChestParticle:0}
replaceitem entity @s[scores={particle=0}] enderchest.0 blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"None","color":"gray","italic":false,"bold":true}'}}
replaceitem entity @s enderchest.1 lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Dragon Breath","color":"green","italic":false,"bold":true}'},ChestParticle:1}
replaceitem entity @s[scores={particle=1}] enderchest.1 blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Dragon Breath","color":"green","italic":false,"bold":true}'}}
replaceitem entity @s enderchest.2 lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Enchantment","color":"green","italic":false,"bold":true}'},ChestParticle:2}
replaceitem entity @s[scores={particle=2}] enderchest.2 blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Enchantment","color":"green","italic":false,"bold":true}'}}
replaceitem entity @s enderchest.3 lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Rain","color":"green","italic":false,"bold":true}'},ChestParticle:3}
replaceitem entity @s[scores={particle=3}] enderchest.3 blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Rain","color":"green","italic":false,"bold":true}'}}
replaceitem entity @s enderchest.4 lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Totem","color":"green","italic":false,"bold":true}'},ChestParticle:4}
replaceitem entity @s[scores={particle=4}] enderchest.4 blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Totem","color":"green","italic":false,"bold":true}'}}
replaceitem entity @s enderchest.5 lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Slime","color":"green","italic":false,"bold":true}'},ChestParticle:5}
replaceitem entity @s[scores={particle=5}] enderchest.5 blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Slime","color":"green","italic":false,"bold":true}'}}
replaceitem entity @s[tag=!particle_note] enderchest.6 red_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Locked","color":"red","italic":false}'],Name:'{"text":"Note","color":"light_purple","italic":false,"bold":true}'}}
replaceitem entity @s[tag=particle_note] enderchest.6 purple_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}'],Name:'{"text":"Note","color":"light_purple","italic":false,"bold":true}'},ChestParticle:6}
replaceitem entity @s[scores={particle=6}] enderchest.6 blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Note","color":"light_purple","italic":false,"bold":true}'}}
replaceitem entity @s[tag=!particle_cloud] enderchest.7 red_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Locked","color":"red","italic":false}'],Name:'{"text":"Cloud","color":"light_purple","italic":false,"bold":true}'}}
replaceitem entity @s[tag=particle_cloud] enderchest.7 purple_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}'],Name:'{"text":"Cloud","color":"light_purple","italic":false,"bold":true}'},ChestParticle:7}
replaceitem entity @s[scores={particle=7}] enderchest.7 blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Cloud","color":"light_purple","italic":false,"bold":true}'}}
replaceitem entity @s[tag=!particle_ink] enderchest.8 red_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Legendary","color":"gold","italic":false}','{"text":"Locked","color":"red","italic":false}'],Name:'{"text":"Ink","color":"yellow","italic":false,"bold":true}'}}
replaceitem entity @s[tag=particle_ink] enderchest.8 orange_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Legendary","color":"gold","italic":false}'],Name:'{"text":"Ink","color":"yellow","italic":false,"bold":true}'},ChestParticle:8}
replaceitem entity @s[scores={particle=8}] enderchest.8 blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Legendary","color":"gold","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Ink","color":"yellow","italic":false,"bold":true}'}}





scoreboard players set @s menu 4
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