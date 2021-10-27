function chest_menu:clear
execute if entity @s[scores={ender_chest=1..}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.25
scoreboard players set @s ender_chest 0

item replace entity @s enderchest.10 with golden_helmet{HideFlags:63,KillWhenDropped:1,display:{Name:'{"text":"Cosmetics","color":"yellow","italic":false,"bold":true}'}}
item replace entity @s enderchest.12 with nether_star{HideFlags:63,KillWhenDropped:1,display:{Name:'{"text":"Statistics","color":"green","italic":false,"bold":true}'}}
item replace entity @s enderchest.14 with music_disc_wait{HideFlags:63,KillWhenDropped:1,display:{Name:'{"text":"Personal Settings","color":"gold","italic":false,"bold":true}'}}
item replace entity @s enderchest.16 with command_block{Chest:1,KillWhenDropped:1,display:{Lore:['[{"text":"The Command","color":"aqua","italic":false,"bold":true},{"text":" Realm","color":"dark_aqua"},{"text":" Team","color":"aqua"}]'],Name:'{"text":"Credits","color":"gray","italic":false,"bold":true,"bold":true}'}}
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

execute unless entity @s[tag=!has_test,tag=!has_help,tag=!has_bld,tag=!has_srbld,tag=!has_prg,tag=!has_srprg,tag=!has_manager,tag=!has_lead,tag=!has_pc,tag=!has_cr,tag=!has_art] run item replace entity @s enderchest.26 with written_book{clickable:1,HideFlags:63,display:{Name:'[{"text":"Titles","bold":true,"italic":false,"color":"white"}]'}}
