scoreboard players operation @s stats_flown = @s stats_flown_cm
scoreboard players operation @s stats_flown /= $100 number
function chest_menu:clear
item replace entity @s enderchest.18 with barrier{KillWhenDropped:1,display:{Name:'{"text":"Back","color":"red","italic":false}'}}

loot replace entity @s enderchest.11 loot minecraft:wins
loot replace entity @s enderchest.12 loot minecraft:played
loot replace entity @s enderchest.13 loot minecraft:kills
loot replace entity @s enderchest.14 loot minecraft:deaths
loot replace entity @s enderchest.15 loot minecraft:flown

scoreboard players set @s menu 7
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