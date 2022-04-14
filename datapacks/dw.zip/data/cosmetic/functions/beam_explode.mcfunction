particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1000000 1
tag @a[distance=..1,gamemode=adventure] add cosmetic_tp_up
gamemode spectator @a[distance=..1,gamemode=adventure]
execute as @a[tag=cosmetic_tp_up] at @s run tp @s ~ 125 ~
tag @a remove cosmetic_tp_up
kill @s