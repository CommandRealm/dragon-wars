# called to start the tournament sword name screen
function chest_menu:clear
item replace entity @s enderchest.18 with barrier{KillWhenDropped:1,display:{Name:'{"text":"Back","color":"red","italic":false}'}}

item replace entity @s enderchest.0 with iron_bars{KillWhenDropped:1,display:{Name:'{"text":"July 2022","color":"gray","italic":false}'}}


item replace entity @s[tag=has_t_j22_1] enderchest.0 with orange_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Limited","color":"gold","italic":false}'],Name:'{"text":"1st Place July 2022 Tournament","color":"light_purple","italic":false,"bold":true}'},ChestSword:1}
item replace entity @s[scores={sword=101}] enderchest.0 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Limited","color":"gold","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"1st Place July 2022 Tournament","color":"light_purple","italic":false,"bold":true}'}}

item replace entity @s[tag=has_t_j22_2] enderchest.0 with orange_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Limited","color":"gold","italic":false}'],Name:'{"text":"2nd Place July 2022 Tournament","color":"light_purple","italic":false,"bold":true}'},ChestSword:2}
item replace entity @s[scores={sword=102}] enderchest.0 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Limited","color":"gold","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"2nd Place July 2022 Tournament","color":"light_purple","italic":false,"bold":true}'}}

item replace entity @s[tag=has_t_j22_3] enderchest.0 with orange_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Limited","color":"gold","italic":false}'],Name:'{"text":"3rd Place July 2022 Tournament","color":"light_purple","italic":false,"bold":true}'},ChestSword:3}
item replace entity @s[scores={sword=103}] enderchest.0 with blue_stained_glass_pane{KillWhenDropped:1,display:{Lore:['{"text":"Limited","color":"gold","italic":false}','{"text":"Selected","color":"blue","italic":false}'],Name:'{"text":"3rd Place July 2022 Tournament","color":"light_purple","italic":false,"bold":true}'}}



scoreboard players set @s menu 11
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
scoreboard players set @s click_25 0