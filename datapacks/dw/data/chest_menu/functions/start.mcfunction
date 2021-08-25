function chest_menu:clear
execute if entity @s[scores={ender_chest=1..}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.25
scoreboard players set @s ender_chest 0

replaceitem entity @s enderchest.10 golden_helmet{HideFlags:63,KillWhenDropped:1,display:{Name:'{"text":"Cosmetics","color":"yellow","italic":false,"bold":true}'}}
replaceitem entity @s enderchest.12 nether_star{HideFlags:63,KillWhenDropped:1,display:{Name:'{"text":"Statistics","color":"green","italic":false,"bold":true}'}}
replaceitem entity @s enderchest.14 music_disc_wait{HideFlags:63,KillWhenDropped:1,display:{Name:'{"text":"Personal Settings","color":"gold","italic":false,"bold":true}'}}
replaceitem entity @s enderchest.16 command_block{Chest:1,KillWhenDropped:1,display:{Lore:['[{"text":"The Command","color":"aqua","italic":false,"bold":true},{"text":" Realm","color":"dark_aqua"},{"text":" Team","color":"aqua"}]'],Name:'{"text":"Credits","color":"gray","italic":false,"bold":true,"bold":true}'}}
scoreboard players set @s menu 0
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