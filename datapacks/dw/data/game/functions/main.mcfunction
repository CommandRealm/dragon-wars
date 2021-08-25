scoreboard players set $number players 0

execute if score $number team matches 1 run function game:check_players
execute if score $number team matches 2.. run function game:check_teams

scoreboard players remove $time timer 1
scoreboard players operation $time timer_seconds = $time timer
scoreboard players operation $time timer_seconds /= $20 number
scoreboard players add $time timer_seconds 1
execute if score $time timer matches 9900..10000 run function game:beginning
execute unless score $time timer matches 9900.. as @a[tag=playing] at @s unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:elytra"}]}] run function game:get_elytra
kill @e[type=item,nbt={Item:{tag:{Die:1}}}]
execute as @a[tag=playing] at @s positioned ~ ~1 ~ as @e[type=item,nbt={Item:{tag:{Pickup:1}}},distance=..1] run data merge entity @s {PickupDelay:0}
execute if score $number team matches 1 run function game:solo_check
execute if score $number team matches 2.. run function game:team_check

scoreboard players remove @e[tag=firework,scores={firework=1..}] firework 1
scoreboard players remove $time firework_second 1
execute if score $time firework_second matches 0 run function game:firework_remove
execute if entity @e[tag=firework,scores={firework=0}] run function game:firework_0

effect give @a[scores={food=..19},tag=playing,tag=!hunger] saturation 1 0 true
effect clear @a[scores={food=20},tag=playing] saturation

execute unless score $time cooldown matches 1.. unless score $time timer matches 9960.. as @a[tag=playing,gamemode=adventure] at @s at @s[y=-5,distance=..5] run function game:void_death
execute if entity @a[scores={damage=1..}] run function game:damaged
execute as @a[tag=playing] at @s store result score @s arrow run data get entity @s Inventory[{Slot:17b}].Count

execute unless score $time timer matches 9900.. as @a[tag=playing,scores={elytra=0},tag=!bar_symbol,gamemode=adventure] at @s run title @s actionbar [{"text":"Elytra equipped","color":"light_purple","underlined":true},{"text":" | ","color":"yellow","underlined":false},{"text":"Arrows: ","color":"red","underlined":false},{"score":{"objective":"arrow","name":"@s"},"color":"red","underlined":false}]
execute unless score $time timer matches 9900.. as @a[tag=playing,scores={elytra=1..},tag=!bar_symbol,gamemode=adventure] at @s run title @s actionbar [{"text":"Elytra equipped","color":"dark_purple","strikethrough":true},{"text":" | ","color":"yellow","strikethrough":false},{"text":"Arrows: ","color":"red","strikethrough":false},{"score":{"objective":"arrow","name":"@s"},"color":"red","strikethrough":false}]

execute unless score $time timer matches 9900.. as @a[tag=playing,scores={elytra=0},tag=bar_symbol,gamemode=adventure] at @s run title @s actionbar [{"text":"╔╗ ","color":"light_purple","underlined":false},{"text":" | ","color":"yellow","underlined":false},{"text":"➹ : ","color":"red","underlined":false},{"score":{"objective":"arrow","name":"@s"},"color":"red","underlined":false}]
execute unless score $time timer matches 9900.. as @a[tag=playing,scores={elytra=1..},tag=bar_symbol,gamemode=adventure] at @s run title @s actionbar [{"text":"╔╗ ","color":"dark_purple","strikethrough":true},{"text":" | ","color":"yellow","strikethrough":false},{"text":"➹ : ","color":"red","strikethrough":false},{"score":{"objective":"arrow","name":"@s"},"color":"red","strikethrough":false}]

tag @a remove warning
execute unless score $time timer matches 9960.. if score $map map matches 0 as @a[tag=playing] at @s unless entity @s[x=2000,y=100,z=0,distance=..125] run tag @s add warning
execute unless score $time timer matches 9960.. if score $map map matches 1 as @a[tag=playing] at @s unless entity @s[x=3000,y=100,z=0,distance=..125] run tag @s add warning
execute unless score $time timer matches 9960.. if score $map map matches 2 as @a[tag=playing] at @s unless entity @s[x=6000,y=100,z=0,distance=..125] run tag @s add warning
execute unless score $time timer matches 9960.. if score $map map matches 3 as @a[tag=playing] at @s unless entity @s[x=5000,y=100,z=0,distance=..125] run tag @s add warning
execute unless score $time timer matches 9960.. if score $map map matches 4 as @a[tag=playing] at @s unless entity @s[x=9000,y=100,z=0,distance=..125] run tag @s add warning
execute unless score $time timer matches 9960.. if score $map map matches 5 as @a[tag=playing] at @s unless entity @s[x=11000,y=100,z=0,distance=..125] run tag @s add warning
execute unless score $time timer matches 9960.. if score $map map matches 6 as @a[tag=playing] at @s unless entity @s[x=4000,y=100,z=0,distance=..125] run tag @s add warning
execute unless score $time timer matches 9960.. if score $map map matches 7 as @a[tag=playing] at @s unless entity @s[x=13000,y=100,z=0,distance=..125] run tag @s add warning
execute unless score $time timer matches 9960.. if score $map map matches 8 as @a[tag=playing] at @s unless entity @s[x=10000,y=100,z=0,distance=..125] run tag @s add warning
execute unless score $time timer matches 9960.. if score $map map matches 9 as @a[tag=playing] at @s unless entity @s[x=12000,y=100,z=0,distance=..125] run tag @s add warning
execute unless score $time timer matches 9960.. if score $map map matches 10 as @a[tag=playing] at @s unless entity @s[x=8000,y=100,z=0,distance=..125] run tag @s add warning
execute unless score $time timer matches 9960.. if score $map map matches 11 as @a[tag=playing] at @s unless entity @s[x=7000,y=100,z=0,distance=..125] run tag @s add warning
execute unless score $time timer matches 9960.. if score $map map matches 12 as @a[tag=playing] at @s unless entity @s[x=14000,y=100,z=0,distance=..125] run tag @s add warning
execute unless score $time timer matches 9960.. if entity @a[tag=warning] run function game:warning
scoreboard players set @a[tag=!warning] warning -1

execute if entity @a[scores={kill=1..},tag=playing] run function game:kill
execute as @e[tag=chest] at @s if block ~ ~ ~ redstone_lamp[lit=true] if block ~ ~1 ~ trapped_chest run function game:chest_break
execute if entity @e[tag=jump_pad] run function game:jump_pad

scoreboard players set @a[scores={axe_dealt=1..}] axe_dealt 0
execute unless score $number mode matches 2 run effect give @a[scores={crouch=1..},tag=playing,gamemode=adventure] glowing 1 0 true
scoreboard players set @a crouch 0
execute if entity @a[scores={elytra=1..}] run function game:no_elytra
scoreboard players remove $time chest_refill_t 1
execute if score $time chest_refill_t matches 0 run function game:chest_refill

execute as @a[tag=playing,gamemode=adventure,nbt={Inventory:[{id:"minecraft:arrow"}]}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:17b}]}] run function game:move_arrow
execute store result bossbar minecraft:refill value run scoreboard players get $time chest_refill_t


execute as @a[scores={respawn=1..}] at @s run function game:respawning

execute as @a[tag=drop_sword,scores={get_sword=1..}] at @s run function game:get_sword_back
execute as @a[tag=drop_firework,scores={get_firework=1..}] at @s run function game:get_firework_back

execute as @a[scores={rc=1..},nbt={SelectedItemSlot:6}] at @s run function game:spectate_start
execute as @a[scores={rc=1..},nbt={SelectedItemSlot:2}] at @s run function game:try_to_rejoin_game
execute as @a[gamemode=spectator] at @s if score $time timer matches ..9899 unless entity @e[tag=chest,distance=..150] run function game:map_tp
execute as @a[tag=playing,tag=celebration] at @s run function cosmetic:celebration_start
execute if entity @a[scores={celebration=1..},tag=playing] run function cosmetic:celebration_active
scoreboard players remove $time game_end 1
execute if score $time game_end matches ..300 run function game:end_countdown

execute as @a[tag=!playing] at @s unless entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:knowledge_book",tag:{book_type:2}}]}] run function lobby:get_join_book
execute as @a[tag=!playing] at @s unless entity @s[nbt={Inventory:[{Slot:6b,id:"minecraft:knowledge_book",tag:{book_type:1}}]}] run function lobby:get_spec_book
scoreboard players reset @a gliding

