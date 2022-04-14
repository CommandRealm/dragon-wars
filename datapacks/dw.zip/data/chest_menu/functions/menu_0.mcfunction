execute store result score @s click_1 run clear @s command_block{Chest:1}
execute store result score @s click_2 run clear @s music_disc_wait{HideFlags:63}
execute store result score @s click_3 run clear @s golden_helmet{HideFlags:63}
execute store result score @s click_4 run clear @s nether_star{HideFlags:63}
execute store result score @s click_5 run clear @s netherite_block
execute store result score @s click_6 run clear @s elytra{button:1}
execute unless entity @s[tag=!has_test,tag=!has_help,tag=!has_bld,tag=!has_srbld,tag=!has_prg,tag=!has_srprg,tag=!has_manager,tag=!has_lead,tag=!has_pc,tag=!has_cr,tag=!has_art] unless data entity @s EnderItems[{id:"minecraft:written_book"}] run function chest_menu:start_titles
