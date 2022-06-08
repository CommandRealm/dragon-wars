execute as @e[tag=model] at @s run tp @s ~ ~ ~ ~5 ~
execute as @a[x=13,y=66,z=-6,distance=..2,tag=!playing] at @s if block ~ ~-1 ~ light_blue_stained_glass unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run function lobby:equip_elytra

# execute at @e[tag=lobby_firework,type=area_effect_cloud] if entity @a[distance=..7,tag=!playing,gamemode=!spectator] run function lobby:firework_age
execute as @e[type=area_effect_cloud,tag=lobby_firework,x=0,y=66,z=0,distance=..500] at @s if entity @a[distance=..7,tag=!playing,gamemode=!spectator] unless entity @e[type=area_effect_cloud,tag=no_rocket_spawn,distance=..1] run function lobby:summon_firework
execute as @a[scores={l_firework=1..},tag=!playing,gamemode=adventure] at @s run function lobby:drop_firework

execute as @a[tag=!playing,gamemode=adventure,x=0,y=66,z=0,distance=..500,tag=!elytra_course] at @s at @s[y=-5,distance=..5] run function lobby:back_to_lobby

execute if entity @e[type=area_effect_cloud,tag=lobby_chest,scores={lobby_refill=1..}] run function lobby:check_chest



execute as @a[scores={ender_chest=1..}] at @s run function chest_menu:start

function chest_menu:check_menu

kill @e[type=item,nbt={Item:{tag:{KillWhenDropped:1}}}]

execute as @a[nbt={EnderItems:[{tag:{echest:1}}]}] at @s run function chest_menu:reset_page
execute as @a[nbt={EnderItems:[{id:"minecraft:arrow"}]}] at @s run function chest_menu:reset_page
kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}},x=0,y=66,z=0,distance=..200]
scoreboard players remove $time unready_cool 1
execute as @a[scores={unready_all=1..}] at @s run function lobby:unready_all

particle portal 11.0 65.85 5.0 0.05 1 0.05 0.25 5
particle portal 4 66.85 22 0.05 1 0.05 0.25 5
execute if score $game state matches 0 as @e[type=armor_stand,tag=spin] at @s positioned as @e[type=area_effect_cloud,tag=lobby_tp] run particle firework ^ ^ ^0.5 0 0 0 0 1
execute if score $game state matches 1.. as @e[type=armor_stand,tag=spin] at @s positioned as @e[type=area_effect_cloud,tag=lobby_tp] run particle falling_dust gray_concrete ^ ^ ^0.5 0 0 0 0 1
execute as @e[tag=lobby_ih_tp,scores={item_hall_tp=0}] at @s at @s[y=65.0,distance=..1] run scoreboard players set @s item_hall_tp 1
execute as @e[tag=lobby_ih_tp,scores={item_hall_tp=1}] at @s at @s[y=68.0,distance=..1] run scoreboard players set @s item_hall_tp 0
execute as @e[tag=tutorial_tp,scores={item_hall_tp=0}] at @s at @s[y=66.0,distance=..1] run scoreboard players set @s item_hall_tp 1
execute as @e[tag=tutorial_tp,scores={item_hall_tp=1}] at @s at @s[y=69.0,distance=..1] run scoreboard players set @s item_hall_tp 0
execute as @e[tag=lobby_tp,scores={item_hall_tp=0}] at @s run tp @s ~ ~-0.05 ~
execute as @e[tag=lobby_tp,scores={item_hall_tp=1}] at @s run tp @s ~ ~0.025 ~
execute if score $game state matches 0 as @a[x=11.0,y=65.5,z=5.0,distance=..0.75] at @s run function lobby:tp_to_item_hall
execute if score $game state matches 1 as @a[x=11.0,y=65.5,z=5.0,distance=..0.75] at @s run function lobby:tp_to_item_hall_during_game


execute as @a[x=4,y=66,z=22,distance=..0.75] at @s run function lobby:tp_to_tutorial
execute as @a[tag=!playing,x=0,y=66,z=0,distance=150..500,gamemode=!creative,tag=!elytra_course] at @s run function lobby:left_lobby
function credits:pl
function credits:hippeh
function credits:deadpool
execute unless score $time startup_timer matches 0.. as @a[x=-21,y=67,z=28,distance=..9,scores={ready=0}] at @s run function lobby:raycast
execute if entity @a[advancements={completionist/completionist=true},tag=!playing] run function completionist:completionist_helix
execute as @e[type=firework_rocket,x=0,y=66,z=0,distance=..400,nbt={Life:10}] at @s run advancement grant @p only minecraft:custom/use_firework
advancement grant @a[x=-54,y=51,z=65,dx=160,dy=60,dz=150,nbt={OnGround:1b}] only minecraft:custom/ride_dragon
advancement grant @a[x=13,y=44,z=-100,distance=..8] only minecraft:custom/find_cr

# drop ready book
execute as @a[x=0,y=66,z=0,distance=..500,scores={drop_ready_book=1..}] at @s run function lobby:drop_ready_book

# particles

execute as @a[x=0,y=66,z=0,distance=..500] at @s run particle minecraft:ash ~ ~ ~ 15 15 15 0.25 35 normal @s

# storing y level
execute as @a[tag=!playing,gamemode=adventure] at @s store result score @s lobby_y run data get entity @s Pos[1] 1
effect give @a[tag=!playing,gamemode=adventure,scores={lobby_y=64..}] resistance 1 255 true


execute unless entity @a[tag=playing] if entity @a[tag=!playing,scores={damage=1..}] run function game:damaged
execute unless entity @a[tag=playing] if entity @a[tag=!playing,scores={elytra=1..}] run function game:no_elytra
execute as @a[tag=!playing,tag=test_elytra] at @s unless score @s elytra matches 1.. unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:elytra"}]}] run function lobby:get_elytra

execute as @a[tag=test_elytra] at @s unless score @s elytra matches 1.. unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run function lobby:unequip_elytra

execute if score $game state matches 1 as @a[tag=!playing] at @s unless score $number mode matches 3 unless entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:knowledge_book",tag:{book_type:2}}]}] run function lobby:get_join_book
execute if score $game state matches 1 as @a[tag=!playing] at @s unless entity @s[nbt={Inventory:[{Slot:6b,id:"minecraft:knowledge_book",tag:{book_type:1}}]}] run function lobby:get_spec_book


# parkour

# if someone steps on the starting Pad
execute as @a[x=-25,y=65,z=7,dx=2,dy=2,dz=2,gamemode=adventure,tag=!elytra_course,tag=!elytra_course_pad] at @s run function lobby:parkour/step_on_pad

# if someone is on the elytra course pad
execute if entity @a[tag=elytra_course_pad,tag=!playing] run function lobby:parkour/player_on_pad


##If someone starts the parkour.

execute as @a[x=-27,y=65,z=5,dx=1,dy=5,dz=6,gamemode=adventure,tag=!elytra_course,nbt={OnGround:0b}] at @s run function lobby:parkour/enter

##If someone is parkouring.
execute if entity @a[tag=elytra_course] run function lobby:parkour/main


# timer for nameplate
scoreboard players add $nameplate parkour_time 1
execute if score $nameplate parkour_time matches 1 run data modify entity @e[type=area_effect_cloud,tag=elytra_course_nameplate,limit=1] CustomName set value '[{"text":" -","color":"light_purple"},{"text":"=","color":"dark_purple"},{"text":"-","color":"light_purple"},{"text":" Elytra ","color":"gray","bold":true},{"text":"Course ","bold":true,"color":"dark_gray"},{"text":"-","color":"light_purple"},{"text":"=","color":"dark_purple"},{"text":"- ","color":"light_purple"}]'
execute if score $nameplate parkour_time matches 5 run data modify entity @e[type=area_effect_cloud,tag=elytra_course_nameplate,limit=1] CustomName set value '[{"text":" =","color":"dark_purple"},{"text":"-","color":"light_purple"},{"text":"=","color":"dark_purple"},{"text":" Elytra ","color":"gray","bold":true},{"text":"Course ","bold":true,"color":"dark_gray"},{"text":"=","color":"dark_purple"},{"text":"-","color":"light_purple"},{"text":"= ","color":"dark_purple"}]'
execute if score $nameplate parkour_time matches 9 run scoreboard players set $nameplate parkour_time 0

scoreboard players add $menu_nameplate parkour_time 1
execute if score $menu_nameplate parkour_time matches 1 run data modify entity @e[type=armor_stand,tag=menu_nameplate,limit=1] CustomName set value '[{"text":" -","color":"light_purple"},{"text":"=","color":"dark_purple"},{"text":"-","color":"light_purple"},{"text":" Menu ","bold":true,"color":"gray"},{"text":"-","color":"light_purple"},{"text":"=","color":"dark_purple"},{"text":"- ","color":"light_purple"}]'
execute if score $menu_nameplate parkour_time matches 5 run data modify entity @e[type=armor_stand,tag=menu_nameplate,limit=1] CustomName set value '[{"text":" =","color":"dark_purple"},{"text":"-","color":"light_purple"},{"text":"=","color":"dark_purple"},{"text":" Menu ","color":"gray","bold":true},{"text":"=","color":"dark_purple"},{"text":"-","color":"light_purple"},{"text":"= ","color":"dark_purple"}]'
execute if score $menu_nameplate parkour_time matches 9 run scoreboard players set $menu_nameplate parkour_time 0

execute as @e[type=item,tag=item_model] at @s run data merge entity @s {Age:-30000,PickupDelay:10000}

execute if score $number mode matches 3 as @a[x=0,y=68,z=45,distance=..10] unless score $time startup_timer matches 1.. run function lobby:competitive_warning

