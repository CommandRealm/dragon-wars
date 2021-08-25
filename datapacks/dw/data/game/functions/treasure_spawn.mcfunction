execute as @r[tag=playing,gamemode=adventure] at @s as @e[tag=chest,limit=1,sort=nearest] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["treasure_summon"]}
execute as @e[tag=treasure_summon] at @s run spreadplayers ~ ~ 0 250 false @s
execute at @e[tag=treasure_summon] if score $block treasure_time matches 5 run summon item ~ ~ ~ {Tags:["lightning_strike"],Invulnerable:1b,Item:{id:"minecraft:iron_block",Count:1b,tag:{Treasure:1,Enchantments:[{id:"easter_egg",lvl:1}],display:{Name:'{"text":"IRON BLOCK","color":"white","bold":true,"italic":false}'}}},NoGravity:1b}
execute at @e[tag=treasure_summon] if score $block treasure_time matches 5 run tellraw @a[tag=playing] {"text":"An IRON BLOCK has appeared!","color":"white"}
execute at @e[tag=treasure_summon] if score $block treasure_time matches 4 run summon item ~ ~ ~ {Tags:["lightning_strike"],Invulnerable:1b,Item:{id:"minecraft:gold_block",Count:1b,tag:{Treasure:1,Enchantments:[{id:"easter_egg",lvl:1}],display:{Name:'{"text":"GOLD BLOCK","color":"gold","bold":true,"italic":false}'}}},NoGravity:1b}
execute at @e[tag=treasure_summon] if score $block treasure_time matches 4 run tellraw @a[tag=playing] {"text":"A GOLD BLOCK has appeared!","color":"gold"}
execute at @e[tag=treasure_summon] if score $block treasure_time matches 3 run summon item ~ ~ ~ {Tags:["lightning_strike"],Invulnerable:1b,Item:{id:"minecraft:lapis_block",Count:1b,tag:{Treasure:1,Enchantments:[{id:"easter_egg",lvl:1}],display:{Name:'{"text":"LAPIS BLOCK","color":"dark_blue","bold":true,"italic":false}'}}},NoGravity:1b}
execute at @e[tag=treasure_summon] if score $block treasure_time matches 3 run tellraw @a[tag=playing] {"text":"A LAPIS BLOCK has appeared!","color":"dark_blue"}
execute at @e[tag=treasure_summon] if score $block treasure_time matches 2 run summon item ~ ~ ~ {Tags:["lightning_strike"],Invulnerable:1b,Item:{id:"minecraft:emerald_block",Count:1b,tag:{Treasure:1,Enchantments:[{id:"easter_egg",lvl:1}],display:{Name:'{"text":"EMERALD BLOCK","color":"green","bold":true,"italic":false}'}}},NoGravity:1b}
execute at @e[tag=treasure_summon] if score $block treasure_time matches 2 run tellraw @a[tag=playing] {"text":"An EMERALD BLOCK has appeared!","color":"green"}
execute at @e[tag=treasure_summon] if score $block treasure_time matches 1 run summon item ~ ~ ~ {Tags:["lightning_strike"],Invulnerable:1b,Item:{id:"minecraft:diamond_block",Count:1b,tag:{Treasure:1,Enchantments:[{id:"easter_egg",lvl:1}],display:{Name:'{"text":"DIAMOND BLOCK","color":"aqua","bold":true,"italic":false}'}}},NoGravity:1b}
execute at @e[tag=treasure_summon] if score $block treasure_time matches 1 run tellraw @a[tag=playing] {"text":"A DIAMOND BLOCK has appeared!","color":"aqua"}
kill @e[tag=treasure_summon]
execute at @e[tag=lightning_strike] run summon lightning_bolt ~ ~ ~
execute at @e[tag=lightning_strike] run data merge entity @s {Fire:-20s}
tag @e[tag=lightning_strike] remove lightning_strike
scoreboard players remove $block treasure_time 1
execute if score $block treasure_time matches 0 run scoreboard players set $block treasure_time 5
scoreboard players operation $time treasure_time = $time treasure_spawn
scoreboard players add BlocksInPlay: treasure 1