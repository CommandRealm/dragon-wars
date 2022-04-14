function chest_menu:clear
item replace entity @s enderchest.18 with barrier{KillWhenDropped:1,display:{Name:'{"text":"Back","color":"red","italic":false}'}}

item replace entity @s enderchest.0 with gray_stained_glass_pane{KillWhenDropped:1,display:{Name:'{"text":"None","color":"gray","italic":false,"bold":true}'},ChestCelebration:0}
item replace entity @s[scores={celeb_number=0}] enderchest.0 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"None","color":"gray","italic":false,"bold":true}'}}
item replace entity @s enderchest.1 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Fireworks","color":"green","italic":false,"bold":true}'},ChestCelebration:1}
item replace entity @s[scores={celeb_number=1}] enderchest.1 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Fireworks","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.2 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Potions","color":"green","italic":false,"bold":true}'},ChestCelebration:2}
item replace entity @s[scores={celeb_number=2}] enderchest.2 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Potions","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.3 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Tornado","color":"green","italic":false,"bold":true}'},ChestCelebration:3}
item replace entity @s[scores={celeb_number=3}] enderchest.3 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Tornado","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.4 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Food","color":"green","italic":false,"bold":true}'},ChestCelebration:4}
item replace entity @s[scores={celeb_number=4}] enderchest.4 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Food","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.5 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Levitation","color":"green","italic":false,"bold":true}'},ChestCelebration:5}
item replace entity @s[scores={celeb_number=5}] enderchest.5 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Levitation","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.6 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Boat","color":"green","italic":false,"bold":true}'},ChestCelebration:6}
item replace entity @s[scores={celeb_number=6}] enderchest.6 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Boat","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.7 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Flowers","color":"green","italic":false,"bold":true}'},ChestCelebration:7}
item replace entity @s[scores={celeb_number=7}] enderchest.7 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Flowers","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.8 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Shield Barricade","color":"green","italic":false,"bold":true}'},ChestCelebration:8}
item replace entity @s[scores={celeb_number=8}] enderchest.8 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Shield Barricade","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.9 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Jukebox","color":"green","italic":false,"bold":true}'},ChestCelebration:9}
item replace entity @s[scores={celeb_number=9}] enderchest.9 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Jukebox","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.10 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Treasure","color":"green","italic":false,"bold":true}'},ChestCelebration:17}
item replace entity @s[scores={celeb_number=17}] enderchest.10 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Treasure","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.11 with lime_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}'],Name:'{"text":"Explosion Beam","color":"green","italic":false,"bold":true}'},ChestCelebration:10}
item replace entity @s[scores={celeb_number=10}] enderchest.11 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Common","color":"dark_green","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Explosion Beam","color":"green","italic":false,"bold":true}'}}
item replace entity @s[tag=!celebration_unicorn] enderchest.12 with red_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Locked","color":"red","italic":false}'],Name:'{"text":"Unicorn","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=celebration_unicorn] enderchest.12 with purple_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}'],Name:'{"text":"Unicorn","color":"light_purple","italic":false,"bold":true}'},ChestCelebration:11}
item replace entity @s[scores={celeb_number=11}] enderchest.12 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Unicorn","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=!celebration_egg] enderchest.13 with red_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Locked","color":"red","italic":false}'],Name:'{"text":"Dragon Egg","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=celebration_egg] enderchest.13 with purple_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}'],Name:'{"text":"Dragon Egg","color":"light_purple","italic":false,"bold":true}'},ChestCelebration:12}
item replace entity @s[scores={celeb_number=12}] enderchest.13 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Dragon Egg","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=!celebration_ghosts] enderchest.14 with red_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Locked","color":"red","italic":false}'],Name:'{"text":"Ghosts","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=celebration_ghosts] enderchest.14 with purple_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}'],Name:'{"text":"Ghosts","color":"light_purple","italic":false,"bold":true}'},ChestCelebration:13}
item replace entity @s[scores={celeb_number=13}] enderchest.14 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Ghosts","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=!celebration_arrow_rain] enderchest.15 with red_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Locked","color":"red","italic":false}'],Name:'{"text":"Arrow Rain","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=celebration_arrow_rain] enderchest.15 with purple_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}'],Name:'{"text":"Arrow Rain","color":"light_purple","italic":false,"bold":true}'},ChestCelebration:14}
item replace entity @s[scores={celeb_number=14}] enderchest.15 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Epic","color":"dark_purple","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Arrow Rain","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=!celebration_dab] enderchest.16 with red_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Legendary","color":"gold","italic":false}','{"text":"Locked","color":"red","italic":false}'],Name:'{"text":"Dab","color":"yellow","italic":false,"bold":true}'}}
item replace entity @s[tag=celebration_dab] enderchest.16 with orange_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Legendary","color":"gold","italic":false}'],Name:'{"text":"Dab","color":"light_purple","italic":false,"bold":true}'},ChestCelebration:15}
item replace entity @s[scores={celeb_number=15}] enderchest.16 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Legendary","color":"gold","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Dab","color":"light_purple","italic":false,"bold":true}'}}
item replace entity @s[tag=!celebration_cry] enderchest.17 with red_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Legendary","color":"gold","italic":false}','{"text":"Locked","color":"red","italic":false}'],Name:'{"text":"Cry","color":"yellow","italic":false,"bold":true}'}}
item replace entity @s[tag=celebration_cry] enderchest.17 with orange_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Legendary","color":"gold","italic":false}'],Name:'{"text":"Cry","color":"light_purple","italic":false,"bold":true}'},ChestCelebration:16}
item replace entity @s[scores={celeb_number=16}] enderchest.17 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Legendary","color":"gold","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"Cry","color":"light_purple","italic":false,"bold":true}'}}

scoreboard players set @s menu 6
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