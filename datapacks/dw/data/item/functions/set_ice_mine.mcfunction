playsound minecraft:block.glass.break master @a ~ ~ ~ 1 2
summon area_effect_cloud ~ ~ ~ {Duration:10000000,Tags:["die","ice_mine"],Invulnerable:1b}
particle block ice ~ ~ ~ 0.05 0.05 0.05 1 100
particle block snow ~ ~.2 ~ 0.05 0.05 0.05 2 50
kill @s