clear @s elytra
replaceitem entity @s armor.chest elytra{Unbreakable:1b,HideFlags:63,display:{Name:'{"text":"Training Course Elytra","color":"light_purple","italic":false}'}}
tag @s add test_elytra
tellraw @s {"text":"Elytra equipped!","color":"light_purple"}
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
advancement grant @s only minecraft:custom/equip_elytra