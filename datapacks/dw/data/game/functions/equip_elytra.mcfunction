item replace entity @s armor.chest with elytra{Unbreakable:1b,HideFlags:63,display:{Name:'{"text":"Test-Course Elytra","color":"light_purple","italic":false}'}}
tag @s add test_elytra
tellraw @s {"text":"Elytra equipped!","color":"light_purple"}
playsound minecraft:block.note_block.pling master @s