clear @s elytra
tag @s remove test_elytra
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.75
tellraw @s [{"text":"- ","color":"gray"},{"text":"Elytra unequipped.","color":"red"}]
kill @e[type=item,distance=..15,nbt={Item:{id:"minecraft:elytra"}},sort=nearest,limit=1]