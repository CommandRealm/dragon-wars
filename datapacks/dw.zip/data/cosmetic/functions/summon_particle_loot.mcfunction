summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand random_loot_t run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand random_loot_t %= $mod random_loot_t
kill @e[type=area_effect_cloud,tag=random]
execute if score $rand random_loot_t matches 0 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b},Age:5980s,PickupDelay:100}
execute if score $rand random_loot_t matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b},Age:5980s,PickupDelay:100}
execute if score $rand random_loot_t matches 2 run summon item ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",Count:1b},Age:5980s,PickupDelay:100}
execute if score $rand random_loot_t matches 3 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b},Age:5980s,PickupDelay:100}
execute if score $rand random_loot_t matches 4 run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b},Age:5980s,PickupDelay:100}
execute if score $rand random_loot_t matches 5 run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_ingot",Count:1b},Age:5980s,PickupDelay:100}
execute if score $rand random_loot_t matches 6 run summon item ~ ~ ~ {Item:{id:"minecraft:redstone",Count:1b},Age:5980s,PickupDelay:100}