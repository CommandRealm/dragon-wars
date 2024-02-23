function lobby:get_elytra
tag @s[tag=!elytra_course] add test_elytra
tellraw @s[tag=!elytra_course] [{"text":"- ","color":"gray"},{"text":"Elytra equipped!","color":"light_purple"}]
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
advancement grant @s[tag=!elytra_course] only advancements:custom/equip_elytra