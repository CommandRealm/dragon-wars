summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand brew_random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand brew_random %= $mod brew_random
kill @e[type=area_effect_cloud,tag=random]
scoreboard players set @s drop_brew 0
execute if score $rand brew_random matches 0 run effect give @s water_breathing 15 0
execute if score $rand brew_random matches 0 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"water breathing!","color":"aqua"}]
execute if score $rand brew_random matches 1 run effect give @s night_vision 15 0
execute if score $rand brew_random matches 1 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"night vision!","color":"blue"}]
execute if score $rand brew_random matches 2 run effect give @s invisibility 15 0
execute if score $rand brew_random matches 2 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"invisibility!","color":"gray"}]
execute if score $rand brew_random matches 3 run effect give @s jump_boost 15 3
execute if score $rand brew_random matches 3 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"jump boost!","color":"green"}]
execute if score $rand brew_random matches 4 run effect give @s fire_resistance 15 0
execute if score $rand brew_random matches 4 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"fire resistance!","color":"red"}]
execute if score $rand brew_random matches 5 run effect give @s speed 15 1
execute if score $rand brew_random matches 5 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"speed!","color":"aqua"}]
execute if score $rand brew_random matches 6 run effect give @s regeneration 15 0
execute if score $rand brew_random matches 6 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"regeneration!","color":"light_purple"}]
execute if score $rand brew_random matches 7 run effect give @s strength 15 0
execute if score $rand brew_random matches 7 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"strength!","color":"dark_red"}]
execute if score $rand brew_random matches 8 run effect give @s levitation 10 7
execute if score $rand brew_random matches 8 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"levitation!","color":"white"}]
execute if score $rand brew_random matches 8 run tag @s[scores={elytra=0}] add e_cooldown
execute if score $rand brew_random matches 8 run scoreboard players add @s[scores={elytra=0}] elytra 1
execute if score $rand brew_random matches 8 run item replace entity @s armor.chest with air
execute if score $rand brew_random matches 9 run effect give @s luck 30 0
execute if score $rand brew_random matches 9 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"luck!","color":"green"}]
execute if score $rand brew_random matches 10 run effect give @s resistance 15 0
execute if score $rand brew_random matches 10 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"resistance!","color":"gray"}]
execute if score $rand brew_random matches 11 run effect give @s slowness 15 1
execute if score $rand brew_random matches 11 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"slowness!","color":"dark_gray"}]
execute if score $rand brew_random matches 12 run effect give @s[tag=!lucky] poison 5 0
execute if score $rand brew_random matches 12 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"poison!","color":"green"}]
execute if score $rand brew_random matches 13 run effect give @s[tag=!lucky] slow_falling 15 0
execute if score $rand brew_random matches 13 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"slow falling!","color":"gray"}]
execute if score $rand brew_random matches 14 run effect give @s[tag=!lucky] blindness 15 0
execute if score $rand brew_random matches 14 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"blindness!","color":"dark_gray"}]
execute if score $rand brew_random matches 15 run effect give @s[tag=!lucky] weakness 15 0
execute if score $rand brew_random matches 15 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"weakness!","color":"gray"}]
execute if score $rand brew_random matches 16 run effect give @s[tag=!lucky] nausea 15 0
execute if score $rand brew_random matches 16 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"nausea!","color":"dark_green"}]
execute if score $rand brew_random matches 17 run effect give @s[tag=!lucky] wither 5 2
execute if score $rand brew_random matches 17 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"wither!","color":"dark_gray"}]
execute if score $rand brew_random matches 18 run effect give @s[tag=!lucky] unluck
execute if score $rand brew_random matches 18 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"unluck!","color":"dark_gray"}]
execute if score $rand brew_random matches 19 run effect give @s[tag=!lucky] glowing 15 0
execute if score $rand brew_random matches 19 run tellraw @s [{"text":"You have received ","color":"gold"},{"text":"glowing!","color":"yellow"}]
playsound minecraft:block.brewing_stand.brew master @s ~ ~ ~
playsound minecraft:entity.wither.ambient master @s ~ ~ ~ 0.5 2
execute if score $rand brew_random matches 11.. if entity @s[tag=lucky] run playsound minecraft:item.totem.use master @s ~ ~ ~ 1 2
execute if score $rand brew_random matches 11.. if entity @s[tag=lucky] run tellraw @s [{"text":"- ","color":"dark_purple"},{"text":"Effect negated by","color":"gray"},{"text":" lucky armor!","color":"yellow","italic":true}]
kill @e[type=item,nbt={Item:{id:"minecraft:brewing_stand"}},distance=..10,sort=nearest,limit=1]
advancement grant @s only minecraft:custom/use_risky_brew