execute as @e[tag=model] at @s run tp @s ~ ~ ~ ~5 ~
execute as @a[x=13,y=66,z=-6,distance=..2,tag=!playing] at @s if block ~ ~-1 ~ light_blue_stained_glass unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run function lobby:equip_elytra
execute as @a[tag=test_elytra] at @s unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run function lobby:unequip_elytra

execute at @e[tag=lobby_firework,type=area_effect_cloud] if entity @a[distance=..7,tag=!playing,gamemode=!spectator] run function lobby:firework_age
execute as @e[tag=lobby_firework,type=area_effect_cloud] at @s unless entity @e[tag=no_rocket_spawn,distance=..1] unless entity @e[type=item,scores={age=0..},distance=..1] as @a[distance=..7,tag=!playing,gamemode=!spectator] unless entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket"}]}] run function lobby:summon_firework
execute as @a[scores={l_firework=1..},tag=!playing,gamemode=adventure] at @s run function lobby:drop_firework

execute as @a[tag=!playing,gamemode=adventure,x=0,y=66,z=0,distance=..500] at @s at @s[y=-5,distance=..5] run function lobby:back_to_lobby

execute if entity @e[tag=lobby_chest,type=area_effect_cloud,scores={lobby_refill=1..}] run function lobby:check_chest



execute as @a[scores={ender_chest=1..}] at @s run function chest_menu:start

function chest_menu:check_menu

kill @e[type=item,nbt={Item:{tag:{KillWhenDropped:1}}}]

execute as @a[nbt={EnderItems:[{tag:{echest:1}}]}] at @s run function chest_menu:reset_page
execute as @a[nbt={EnderItems:[{id:"minecraft:arrow"}]}] at @s run function chest_menu:reset_page
kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}},x=0,y=66,z=0,distance=..200]
scoreboard players remove $time unready_cool 1
execute as @a[scores={unready_all=1..}] at @s run function lobby:unready_all

particle portal -7 68.75 43 0.05 1 0.05 0.25 5
execute if score $game state matches 0 as @e[tag=spin] at @s positioned as @e[tag=lobby_ih_tp] run particle firework ^ ^ ^0.5 0 0 0 0 1
execute if score $game state matches 1.. as @e[tag=spin] at @s positioned as @e[tag=lobby_ih_tp] run particle falling_dust gray_concrete ^ ^ ^0.5 0 0 0 0 1
execute as @e[tag=lobby_ih_tp,scores={item_hall_tp=0}] at @s at @s[y=68.0,distance=..1] run scoreboard players set @s item_hall_tp 1
execute as @e[tag=lobby_ih_tp,scores={item_hall_tp=1}] at @s at @s[y=71.0,distance=..1] run scoreboard players set @s item_hall_tp 0
execute as @e[tag=lobby_ih_tp,scores={item_hall_tp=0}] at @s run tp @s ~ ~-0.05 ~
execute as @e[tag=lobby_ih_tp,scores={item_hall_tp=1}] at @s run tp @s ~ ~0.025 ~
execute if score $game state matches 0 as @a[x=-6.5,y=68,z=43.5,distance=..0.75] at @s run function lobby:tp_to_item_hall
execute if score $game state matches 1 as @a[x=-6.5,y=68,z=43.5,distance=..0.75] at @s run function lobby:tp_to_item_hall_during_game

execute as @a[tag=!playing,x=0,y=66,z=0,distance=150..500] at @s run function lobby:left_lobby
function credits:pl
function credits:hippeh
function credits:deadpool
execute unless score $time startup_timer matches 0.. as @a[x=-21,y=67,z=28,distance=..9,scores={ready=0}] at @s run function lobby:raycast
execute if entity @a[advancements={completionist/completionist=true},tag=!playing] run function completionist:completionist_helix
execute as @e[type=firework_rocket,x=0,y=66,z=0,distance=..400,nbt={Life:10}] at @s run advancement grant @p only minecraft:custom/use_firework
advancement grant @a[x=-54,y=51,z=65,dx=160,dy=60,dz=150,nbt={OnGround:1b}] only minecraft:custom/ride_dragon
advancement grant @a[x=13,y=44,z=-100,distance=..8] only minecraft:custom/find_cr

