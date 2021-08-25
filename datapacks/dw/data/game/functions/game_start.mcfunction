execute as @a[tag=playing] at @s unless entity @s[x=0,y=66,z=0,distance=..300] run kill @e[type=item,distance=..300,tag=!no_die,tag=!item_model]
clear @a[tag=playing]
effect clear @a[tag=playing]
gamemode adventure @a[tag=playing,gamemode=!adventure]
execute unless score $map map_select matches -1 run scoreboard players operation $map map = $map map_select
tp @a[tag=playing] 0 60 10
schedule function game:setup_map_tp 2t
schedule function game:spawnpoint 5t
effect give @a[tag=playing] blindness 6 255 true
effect give @a[tag=playing] levitation 6 255 true
effect give @a[tag=playing] weakness 6 255 true
scoreboard players set $time timer 10000
kill @e[type=arrow]
scoreboard objectives add timer_seconds dummy {"text":"Time Remaining","color":"dark_purple","bold":true}
scoreboard players set $game state 1
scoreboard objectives setdisplay sidebar
tag @a remove no_elytra
execute as @a[tag=playing] at @s run function cosmetic:sword
give @a[tag=playing] bow{HideFlags:63,KillOnDeath:1,Unbreakable:1b,display:{Lore:['{"text":"A normal bow.","italic":false,"color":"red"}'],Name:'{"text":"Bow","color":"red","italic":false}'}}
replaceitem entity @a[tag=playing] armor.head dragon_head{KillOnDeath:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:63,display:{Lore:['{"text":"The head of a dragon.","italic":false,"color":"dark_purple"}'],Name:'{"text":"Dragon Head","color":"dark_purple","italic":false}'}}
scoreboard players reset @a death
execute if score $number team matches 1 run team join game @a[tag=playing]
effect give @a[tag=playing] regeneration 1 255 true
execute as @a[tag=playing] at @s run playsound minecraft:entity.ender_dragon.ambient master @s ~ ~ ~ 1000000 2
execute if score $number mode matches 0 run scoreboard objectives setdisplay sidebar rounds
execute if score $number mode matches 1 run scoreboard objectives setdisplay sidebar kills
execute if score $number mode matches 2 run scoreboard objectives setdisplay sidebar treasure
title @a[tag=playing] title {"text":" "}
title @a[tag=playing] subtitle {"text":" "}
xp set @a 0 levels
scoreboard players set @a elytra 0
scoreboard players set @a damage 0
tag @a remove warning
title @a[tag=playing] times 0 20 5
xp set @a 0 points
scoreboard players set @a kill 0
tag @a remove e_cooldown
clear @a[tag=playing] elytra
scoreboard players set @a open_chest 0
scoreboard players set @a drop_gray 0
scoreboard players set @a drop_l_gray 0
tag @a remove iron
tag @a remove chain
tag @a remove ninja
tag @a remove lucky
tag @a remove spartan
tag @a remove gladiator
scoreboard players set @a axe_dealt 0
scoreboard players set @a crouch 0
scoreboard players set @a drop_brew 0
execute as @e[type=minecraft:area_effect_cloud] at @s unless entity @s[nbt={RadiusOnUse:0.0f}] run kill @s
kill @e[type=trident]

execute as @r at @s run function game:random_tip


bossbar remove refill
execute if score $time chest_refill matches 0.. run bossbar add refill {"text":"Time until chests refill . . .","color":"gold","bold":true}
execute store result bossbar minecraft:refill max run scoreboard players get $time chest_refill
execute store result bossbar minecraft:refill value run scoreboard players get $time chest_refill
bossbar set minecraft:refill color red
scoreboard players set @a tornado_jump 0
tp @e[tag=monster] 0 2 0
kill @e[tag=monster]
scoreboard players set @a respawn 0
scoreboard players set $time chest_refill_t 100
scoreboard players set $time firework_second 20
scoreboard players set @a l_firework 0
scoreboard players reset @a armor_delay
replaceitem entity @a[tag=!playing,gamemode=adventure] hotbar.4 air

scoreboard players operation $time treasure_time = $time treasure_spawn
scoreboard players set $block treasure_time 5
scoreboard players set @a get_firework 0
scoreboard players set @a get_sword 0
scoreboard players set @a warning -1
scoreboard players set @a treasure_sidebar 0
scoreboard players set @a treasure_side2 0
tag @a remove celebration
scoreboard players set @a celebration 0
tag @a remove hunger
stopsound @a * minecraft:music_disc.cat
scoreboard players set $time game_end 18000

execute if score $map map matches 0 run tag @a[tag=playing] add played_on_map_0
execute if score $map map matches 1 run tag @a[tag=playing] add played_on_map_1
execute if score $map map matches 2 run tag @a[tag=playing] add played_on_map_2
execute if score $map map matches 3 run tag @a[tag=playing] add played_on_map_3
execute if score $map map matches 4 run tag @a[tag=playing] add played_on_map_4
execute if score $map map matches 5 run tag @a[tag=playing] add played_on_map_5
execute if score $map map matches 6 run tag @a[tag=playing] add played_on_map_6
execute if score $map map matches 7 run tag @a[tag=playing] add played_on_map_7
execute if score $map map matches 8 run tag @a[tag=playing] add played_on_map_8
execute if score $map map matches 9 run tag @a[tag=playing] add played_on_map_9
execute if score $map map matches 10 run tag @a[tag=playing] add played_on_map_10
execute if score $map map matches 11 run tag @a[tag=playing] add played_on_map_11
execute if score $map map matches 12 run tag @a[tag=playing] add played_on_map_12
advancement grant @a[tag=playing,tag=played_on_map_0,tag=played_on_map_1,tag=played_on_map_2,tag=played_on_map_3,tag=played_on_map_4,tag=played_on_map_5,tag=played_on_map_6,tag=played_on_map_7,tag=played_on_map_8,tag=played_on_map_9,tag=played_on_map_10,tag=played_on_map_11,tag=played_on_map_12] only minecraft:custom/play_on_every_map
advancement grant @a[advancements={custom/unlock_celebration=false,custom/play_game=true,custom/win_rounds=true,custom/win_kills=true,custom/win_treasure=true,custom/win_teams=true,custom/win_five_games=true,custom/win_ten_games=true,custom/play_on_every_map=true}] only minecraft:custom/unlock_celebration
advancement grant @a[tag=playing] only minecraft:custom/play_game