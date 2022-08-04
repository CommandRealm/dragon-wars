tag @s remove particle_cloud
tag @s remove particle_note
tag @s remove particle_ink
tag @s remove sword_stabby
tag @s remove sword_boom_doom
tag @s remove sword_chosen_one
tag @s remove sword_final_wrath
tag @s remove sword_stabby
tag @s remove sword_swordie
tag @s remove sword_idk

tag @s remove sword_combo
tag @s remove sword_pulled
tag @s remove sword_secret

tag @s remove celebration_unicorn
tag @s remove celebration_egg
tag @s remove celebration_arrow_rain
tag @s remove celebration_ghosts
tag @s remove celebration_dab
tag @s remove celebration_cry
scoreboard players set @s stats_played 0
scoreboard players set @s stats_kills 0
scoreboard players set @s stats_deaths 0
scoreboard players set @s stats_wins 0
scoreboard players set @s stats_flown 0
scoreboard players set @s stats_flown_cm 0
tag @s remove fakeplayer
tag @s remove builder
tag @s remove building
scoreboard players set @s particle 0
scoreboard players set @s celeb_number 0
scoreboard players set @s sword 0
recipe take @s *
advancement revoke @s everything
tag @s remove played_on_map_0
tag @s remove played_on_map_1
tag @s remove played_on_map_2
tag @s remove played_on_map_3
tag @s remove played_on_map_4
tag @s remove played_on_map_5
tag @s remove played_on_map_6
tag @s remove played_on_map_7
tag @s remove played_on_map_8
tag @s remove played_on_map_9
tag @s remove played_on_map_10
tag @s remove played_on_map_11
tag @s remove played_on_map_12
tag @s remove played_on_map_13
tag @s remove played_on_map_14
tag @s remove played_on_map_15

tag @s remove used_iron
tag @s remove used_chain
tag @s remove used_ninja
tag @s remove used_lucky
tag @s remove used_gladiator
tag @s remove used_cactus
tag @s remove used_jump_boost

tag @s remove iron
tag @s remove chain
tag @s remove ninja
tag @s remove lucky
tag @s remove gladiator
tag @s remove spartan
tag @s remove jump_boost

function general:update_roles
scoreboard players set @s prefix -1
execute if entity @s[tag=has_cr] run scoreboard players set @s prefix 99
execute if entity @s[tag=has_test] run scoreboard players set @s prefix 0
execute if entity @s[tag=has_help] run scoreboard players set @s prefix 1
execute if entity @s[tag=has_bld] run scoreboard players set @s prefix 2
execute if entity @s[tag=has_prg] run scoreboard players set @s prefix 4
execute if entity @s[tag=has_art] run scoreboard players set @s prefix 8
execute if entity @s[tag=has_srbld] run scoreboard players set @s prefix 3
execute if entity @s[tag=has_srprg] run scoreboard players set @s prefix 5

execute if entity @s[tag=has_pc] run scoreboard players set @s prefix -2
execute if entity @s[tag=has_melon] run scoreboard players set @s prefix -3


execute if entity @s[tag=has_organizer] run scoreboard players set @s prefix 95
execute if entity @s[tag=has_manager] run scoreboard players set @s prefix 6
execute if entity @s[tag=has_lead] run scoreboard players set @s prefix 7

scoreboard players set @s parkour_score 1000000000

# generating lobby id
scoreboard players add $id lobby_id 1
scoreboard players operation @s lobby_id = $id lobby_id