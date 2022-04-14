execute if entity @s[team=!lobby,team=!test,team=!help,team=!bld,team=!prg,team=!srprg,team=!lead,team=!true_gamer] run tellraw @s {"text":"You have left your team.","color":"gray"}
execute if entity @s[team=!lobby,team=!test,team=!help,team=!bld,team=!prg,team=!srprg,team=!lead,team=!true_gamer] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute unless entity @s[team=!lobby,team=!test,team=!help,team=!bld,team=!prg,team=!srprg,team=!lead,team=!true_gamer] run tellraw @s {"text":"You are not on a team.","color":"gray"}
execute unless entity @s[team=!lobby,team=!test,team=!help,team=!bld,team=!prg,team=!srprg,team=!lead,team=!true_gamer] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

execute if entity @s[team=!lobby,team=!test,team=!help,team=!bld,team=!prg,team=!srprg,team=!lead,team=!true_gamer] run function general:team