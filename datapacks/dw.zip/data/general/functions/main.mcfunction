scoreboard players set @a[scores={leave=1..}] newplayer 0
scoreboard players add @a newplayer 1
execute as @a[scores={newplayer=1}] at @s run function general:newplayer
execute if entity @a[tag=i_move] run function intro:check_move
execute if entity @a[scores={intro=0..}] run function intro:main
execute if score $game state matches 0 run function pregame:main
execute if score $game state matches 1 run function game:check_main
effect give @a[tag=!playing] saturation 2 0 true
kill @e[type=tnt,nbt={Fuse:1s}]
execute if entity @a[x=0,y=66,z=0,distance=..500] run function lobby:main
execute if entity @a[x=-1000,y=66,z=0,distance=..400] run function tutorial:main

execute as @a[gamemode=adventure,tag=!elytra_course] at @s at @s[y=10,distance=..25] run particle dragon_breath ~ 0 ~ 10 0 10 0 20 force @s


execute as @a[gamemode=adventure,scores={open_chest=1..}] at @s run function item:open_chest

execute as @e[tag=lobby_chest] at @s if block ~ ~ ~ redstone_lamp[lit=true] if block ~ ~1 ~ trapped_chest run function game:chest_break


function item:lf_drop

function item:check


kill @e[type=chicken,nbt={Age:-24000}]

execute if entity @a[scores={tornado_jump=1..}] run function item:tornado_particles
execute as @e[type=firework_rocket] at @s as @p[gamemode=adventure,sort=nearest,limit=1] if entity @s[scores={particle=1..}] at @s run function cosmetic:boost_particle
execute as @e[type=firework_rocket,tag=!played_sound] at @s run function cosmetic:boost_particle_sound

execute as @a[scores={back_to_lobby=1..}] if entity @s[gamemode=spectator,team=spectator] at @s run function general:back_to_lobby
execute as @a[scores={back_to_lobby=1..}] unless entity @s[gamemode=spectator,team=spectator] at @s run function general:error
execute as @e[tag=spin,type=armor_stand,limit=1] at @s run tp @s ~ ~ ~ ~25 ~
execute if entity @a[x=52,y=72,z=-14,dx=24,dy=7,dz=12] run function hall_of_items:main
execute as @a[scores={description=1..}] at @s run function hall_of_items:description
scoreboard players enable @a select_team
execute as @a[scores={select_team=1..}] at @s run function lobby:check_team

advancement grant @a[nbt={SelectedItem:{id:"minecraft:shield"}},advancements={custom/block_with_shield=false}] only minecraft:custom/block_with_shield
advancement grant @a[nbt={active_effects:[{id:"minecraft:slow_falling"}]},advancements={custom/obtain_slow_falling=false}] only minecraft:custom/obtain_slow_falling
advancement grant @a[advancements={custom/unlock_boost_particle=false,custom/block_with_shield=true,custom/use_risky_brew=true,custom/step_on_ice_mine=true,custom/obtain_slow_falling=true,custom/use_levitation_blast=true,custom/equip_armors=true,custom/use_tornado_jump=true}] only minecraft:custom/unlock_boost_particle
advancement grant @a[advancements={custom/unlock_sword_name=false,custom/get_a_kill=true,custom/get_a_kill_while_flying=true,custom/get_a_kill_near_void=true,custom/kill_with_rage_axe=true,custom/kill_with_vampiric_stake=true,custom/kill_player_with_treasure_blocks=true}] only minecraft:custom/unlock_sword_name
advancement grant @a[advancements={custom/unlock_prefix=false,custom/equip_elytra=true,custom/complete_tutorial=true,custom/open_chest=true,custom/use_firework=true,custom/fall_off_lobby=true,custom/ride_dragon=true,custom/find_cr=true,custom/check_out_socials=true}] only minecraft:custom/unlock_prefix
advancement grant @a[advancements={completionist/completionist=false,custom/unlock_prefix=true,custom/unlock_boost_particle=true,custom/unlock_sword_name=true,custom/unlock_celebration=true}] only minecraft:completionist/completionist