team add lobby
team add test
team add help
team add bld
team add srbld
team add srprg
team add prg
team add true_gamer
team modify lobby color light_purple
team modify test color light_purple
team modify help color light_purple
team modify bld color light_purple
team modify prg color light_purple
team modify srbld color light_purple
team modify srprg color light_purple
team modify true_gamer color light_purple
team modify test prefix {"text":"(Tester) ","color":"light_purple"}
team modify help prefix {"text":"[Helper] ","color":"dark_purple"}
team modify bld prefix {"text":"{Builder} ","color":"blue"}
team modify prg prefix {"text":"{Programmer} ","color":"red"}
team modify srbld prefix {"text":"{Sr. Builder} ","color":"dark_blue"}
team modify srprg prefix {"text":"{Sr. Programmer} ","color":"dark_red"}
team modify true_gamer prefix [{"text":"(","color":"dark_green","bold":true},{"text":"The True Gamer","color":"green","bold":false},{"text":") ","color":"dark_green","bold":true}]

team modify lobby collisionRule never
team modify test collisionRule never
team modify help collisionRule never
team modify bld collisionRule never
team modify prg collisionRule never
team modify srbld collisionRule never
team modify srprg collisionRule never
team modify true_gamer collisionRule never

team add organizer
team modify organizer color light_purple
team modify organizer prefix [{"text":"[","color":"#5f5511"},{"text":"Ｔ","color":"gold","bold":false,"italic": true},{"text":"] ","color":"#5f5511"},{"text":"Organizer ","color":"gray","bold":false}]

team add tournament
team modify tournament color light_purple
team modify tournament prefix [{"text":"(","color":"dark_gray","bold":true},{"text":"Tournament","color":"gray","bold":false},{"text":") ","color":"dark_gray","bold":true}]


scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add newplayer dummy
scoreboard objectives add intro dummy
scoreboard objectives add i_walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add i_sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add i_crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add state dummy
scoreboard objectives add ready dummy
scoreboard players add $game state 0
scoreboard objectives add rc minecraft.used:minecraft.knowledge_book
scoreboard objectives add startup_timer dummy
scoreboard objectives add number dummy
scoreboard players set $20 number 20
scoreboard players set $15 number 15
scoreboard objectives add n_ready dummy
scoreboard objectives add n_on dummy
scoreboard objectives add alternate_20 dummy
scoreboard objectives add map dummy
scoreboard objectives add map_select dummy
scoreboard players add $map map_select 0
gamerule fallDamage false
scoreboard objectives add timer dummy
team add seconds
team join seconds :
team modify seconds color light_purple
team modify seconds prefix {"text":"Seconds","color":"light_purple"}
scoreboard objectives add death deathCount
scoreboard objectives add mode dummy
scoreboard players add $number mode 0
scoreboard objectives add alive dummy
team add dead
team modify dead color red
team add game
team modify game color dark_purple
scoreboard objectives add team dummy
scoreboard players add $toggle team 0
scoreboard objectives add active dummy
scoreboard objectives add round_criteria dummy
scoreboard players add $round round_criteria 0
execute if score $round round_criteria matches 0 run scoreboard players set $round round_criteria 3
gamerule doImmediateRespawn true
scoreboard objectives add arrow dummy
scoreboard objectives add players dummy
scoreboard objectives add firework dummy
scoreboard objectives add food food
scoreboard objectives add cooldown dummy
scoreboard objectives add elytra dummy
scoreboard objectives add damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add axe_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add health health
scoreboard objectives add kill minecraft.custom:minecraft.player_kills
scoreboard objectives add chest_random dummy
scoreboard players set $mod chest_random 4
scoreboard objectives add loot_random dummy
scoreboard players set $mod loot_random 4
scoreboard objectives add open_chest minecraft.custom:minecraft.trigger_trapped_chest
scoreboard objectives add drop_armor minecraft.dropped:minecraft.firework_star
scoreboard objectives add tnt_time dummy
scoreboard objectives add tnt_rotation dummy
scoreboard objectives add tnt_mot_x dummy
scoreboard objectives add tnt_mot_y dummy
scoreboard objectives add tnt_mot_z dummy
scoreboard objectives add brew_random dummy
scoreboard objectives add drop_brew minecraft.dropped:minecraft.brewing_stand
scoreboard players set $mod brew_random 20
scoreboard objectives add trident_x dummy
scoreboard objectives add trident_z dummy
scoreboard objectives add trident_tp dummy
scoreboard objectives add crouch minecraft.custom:minecraft.sneak_time
scoreboard objectives add chest_refill dummy
scoreboard objectives add chest_refill_t dummy
scoreboard players add $time chest_refill 0
execute if score $time chest_refill matches 0 run scoreboard players set $time chest_refill 1200
scoreboard objectives remove drop_rod
scoreboard objectives add drop_rod minecraft.dropped:minecraft.ender_eye
scoreboard objectives add swap_time dummy
scoreboard objectives add tip dummy
scoreboard objectives add drop_jump minecraft.dropped:minecraft.feather
scoreboard objectives add egg_time dummy
gamerule doMobLoot false
scoreboard objectives add horde_random dummy
scoreboard players set $mod horde_random 21
scoreboard objectives add horde_count dummy
scoreboard players set $mod horde_count 5
team add fiend
kill @e[tag=spin,type=armor_stand]
summon armor_stand 0 31 0 {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Tags:["spin"]}
scoreboard objectives add tornado_jump dummy
scoreboard objectives add particle dummy
scoreboard objectives add sword dummy
scoreboard objectives add respawn dummy
scoreboard objectives add set_kills dummy
scoreboard players add $number set_kills 0
execute if score $number set_kills matches 0 run scoreboard players set $number set_kills 15
team add colon
team join colon :
scoreboard objectives add kill_sound playerKillCount
scoreboard objectives add set_time dummy
scoreboard players set $mod set_time 4
scoreboard objectives add firework_time dummy
scoreboard objectives add firework_second dummy
scoreboard objectives add tab_kills playerKillCount
scoreboard objectives add age dummy
kill @e[tag=lobby_firework,type=area_effect_cloud]
summon area_effect_cloud -24 36 -54 {Tags:["lobby_firework"],Duration:100000000}
summon area_effect_cloud 13 36 -17 {Tags:["lobby_firework"],Duration:100000000}
summon area_effect_cloud 50 36 -54 {Tags:["lobby_firework"],Duration:100000000}
summon area_effect_cloud 13 36 -91 {Tags:["lobby_firework"],Duration:100000000}


summon area_effect_cloud -1000 102 40 {Tags:["lobby_firework"],Duration:100000000}


scoreboard objectives add l_firework minecraft.dropped:minecraft.firework_rocket
scoreboard objectives add armor_delay dummy

kill @e[tag=lobby_chest,type=area_effect_cloud]
summon area_effect_cloud 13 41 -55 {Tags:["lobby_chest"],Duration:100000000}
summon area_effect_cloud 14 41 -54 {Tags:["lobby_chest"],Duration:100000000}
summon area_effect_cloud 12 41 -54 {Tags:["lobby_chest"],Duration:100000000}
summon area_effect_cloud 13 41 -53 {Tags:["lobby_chest"],Duration:100000000}

summon area_effect_cloud -13 65 9 {Tags:["lobby_chest"],Duration:100000000}
summon area_effect_cloud -16 66 21 {Tags:["lobby_chest"],Duration:100000000}
summon area_effect_cloud -25 67 38 {Tags:["lobby_chest"],Duration:100000000}
summon area_effect_cloud -29 67 51 {Tags:["lobby_chest"],Duration:100000000}
summon area_effect_cloud 33 67 59 {Tags:["lobby_chest"],Duration:100000000}
summon area_effect_cloud 26 67 39 {Tags:["lobby_chest"],Duration:100000000}
summon area_effect_cloud 26 66 8 {Tags:["lobby_chest"],Duration:100000000}

summon area_effect_cloud 55 72 4 {Tags:["lobby_chest"],Duration:100000000}
summon area_effect_cloud 52 77 6 {Tags:["lobby_chest"],Duration:100000000}
summon area_effect_cloud 69 78 17 {Tags:["lobby_chest"],Duration:100000000}

summon area_effect_cloud -999 111 126 {Tags:["lobby_chest"],Duration:100000000}
summon area_effect_cloud -1000 111 127 {Tags:["lobby_chest"],Duration:100000000}
summon area_effect_cloud -1000 111 125 {Tags:["lobby_chest"],Duration:100000000}
summon area_effect_cloud -1001 111 126 {Tags:["lobby_chest"],Duration:100000000}




scoreboard objectives add lobby_refill dummy
scoreboard objectives add select_team trigger

team add red
team add blue
team add yellow
team add green
team add gray
team modify red color dark_red
team modify blue color dark_blue
team modify yellow color yellow
team modify green color green
team modify gray color dark_gray

team modify red friendlyFire false
team modify blue friendlyFire false
team modify yellow friendlyFire false
team modify green friendlyFire false
team modify gray friendlyFire false

team modify red collisionRule never
team modify blue collisionRule never
team modify yellow collisionRule never
team modify green collisionRule never
team modify gray collisionRule never
team join red Red:
team join blue Blue:
team join yellow Yellow:
team join green Green:
team join gray Gray:
scoreboard objectives add treasure_spawn dummy
scoreboard objectives add treasure_time dummy
scoreboard objectives add ender_chest minecraft.custom:minecraft.open_enderchest
scoreboard objectives add menu dummy
scoreboard objectives add click_1 dummy
scoreboard objectives add click_2 dummy
scoreboard objectives add click_3 dummy
scoreboard objectives add click_4 dummy
scoreboard objectives add click_5 dummy
scoreboard objectives add click_6 dummy
scoreboard objectives add click_7 dummy
scoreboard objectives add click_8 dummy
scoreboard objectives add click_9 dummy
scoreboard objectives add click_10 dummy
scoreboard objectives add click_11 dummy
scoreboard objectives add click_12 dummy
scoreboard objectives add click_13 dummy
scoreboard objectives add click_14 dummy
scoreboard objectives add click_15 dummy
scoreboard objectives add click_16 dummy
scoreboard objectives add click_17 dummy
scoreboard objectives add click_18 dummy
scoreboard objectives add click_19 dummy
scoreboard objectives add click_20 dummy
scoreboard objectives add click_21 dummy
scoreboard objectives add click_22 dummy
scoreboard objectives add click_23 dummy
scoreboard objectives add click_24 dummy
scoreboard objectives add click_25 dummy

scoreboard objectives add get_firework minecraft.dropped:minecraft.firework_rocket
scoreboard objectives add get_sword minecraft.dropped:minecraft.stone_sword
team add gold_color
team modify gold_color color gold
team join gold_color BlocksInPlay:
scoreboard objectives add warning dummy
scoreboard objectives add treasure_sidebar dummy
scoreboard objectives add treasure_side2 dummy
scoreboard objectives add treasure_alone dummy
scoreboard objectives remove unready_all
scoreboard objectives add unready_cool dummy
team add spectator
team modify spectator color white
team modify spectator prefix {"text":"[SPEC] ","color":"white","bold":true}
scoreboard objectives add back_to_lobby trigger
scoreboard objectives add item_hall_tp dummy
kill @e[type=area_effect_cloud,tag=item_hall_tp]
summon area_effect_cloud 11.0 65.5 5.0 {Duration:1000000,Tags:["item_hall_tp","lobby_ih_tp","lobby_tp"]}
summon area_effect_cloud 4 66.5 22 {Duration:1000000,Tags:["item_hall_tp","tutorial_tp","lobby_tp"]}



scoreboard players set @e[type=area_effect_cloud,tag=lobby_tp] item_hall_tp 0
kill @e[tag=floating_nameplate]
summon armor_stand 11.0 68 5.0 {Invisible:1,Invulnerable:1,Marker:1b,NoGravity:1b,CustomName:'{"text":"Item Hall","color":"yellow","underlined":true}',Tags:["floating_nameplate"],CustomNameVisible:1b}
summon armor_stand 4 69 22 {Invisible:1,Invulnerable:1,Marker:1b,NoGravity:1b,CustomName:'{"text":"Tutorial","color":"light_purple","underlined":true}',Tags:["floating_nameplate"],CustomNameVisible:1b}
summon armor_stand 4 67 8 {Invisible:1,Invulnerable:1,Marker:1b,NoGravity:1b,CustomName:'{"text":"Menu","color":"dark_purple","underlined":true}',Tags:["floating_nameplate","menu_nameplate"],CustomNameVisible:1b}
# summon armor_stand -1000 65 -60 {Invisible:1,Invulnerable:1,Marker:1b,NoGravity:1b,CustomName:'{"text":"Lobby","color":"light_purple","underlined":true}',Tags:["floating_nameplate"],CustomNameVisible:1b}
# summon armor_stand -1000 64 8 {Invisible:1,Invulnerable:1,Marker:1b,NoGravity:1b,CustomName:'{"text":"Lobby","color":"light_purple","underlined":true}',Tags:["floating_nameplate"],CustomNameVisible:1b}
summon armor_stand 13 69 -6 {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,CustomName:'{"text":"Elytra Pad","color":"dark_aqua","underlined":true}',Tags:["floating_nameplate"],CustomNameVisible:1b}
scoreboard objectives add crouch2 minecraft.custom:minecraft.sneak_time
scoreboard objectives add crouch_time dummy
scoreboard objectives remove description
scoreboard objectives add description dummy
scoreboard objectives add celebration dummy
scoreboard objectives add celeb_number dummy
scoreboard objectives add arrow_rain dummy
gamerule doLimitedCrafting true
scoreboard objectives add stats_wins dummy
scoreboard objectives add stats_played dummy
scoreboard objectives add stats_kills playerKillCount
scoreboard objectives add stats_deaths deathCount
scoreboard objectives add stats_wins dummy
scoreboard objectives remove stats_flown
scoreboard objectives add stats_flown_cm minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add stats_flown dummy
gamerule reducedDebugInfo true
gamerule sendCommandFeedback false
scoreboard objectives add rand_cosmetic dummy
scoreboard objectives add resetting dummy
scoreboard objectives add random_map dummy
scoreboard players set $mod random_map 16
scoreboard objectives add game_end dummy
scoreboard players set $100 number 100
scoreboard objectives add death_msg dummy
scoreboard objectives add music dummy
scoreboard objectives add auto_ready dummy
scoreboard players add $number auto_ready 0
scoreboard objectives modify health displayname [{"text":"[","color":"dark_red"},{"text":"❤","color":"red"},{"text":"]","color":"dark_red"}]
bossbar remove minecraft:lobby
bossbar add lobby [{"text":"|","color":"light_purple","obfuscated":true},{"text":" - DRAGON WARS - ","color":"dark_purple","bold":true,"obfuscated":false},{"text":"By the","color":"white","obfuscated":false,"bold":true},{"text":" Command","color":"aqua","obfuscated":false,"bold":true},{"text":" Realm","color":"dark_aqua","obfuscated":false,"bold":true},{"text":" Team ","color":"white","obfuscated":false,"bold":true},{"text":"|","color":"light_purple","obfuscated":true}]
bossbar set minecraft:lobby color purple
bossbar set minecraft:lobby style progress
bossbar set minecraft:lobby max 1
bossbar set minecraft:lobby value 1
bossbar set minecraft:lobby players @a[tag=!playing]
scoreboard objectives add drop_tnt minecraft.dropped:minecraft.tnt
scoreboard objectives add drop_w_skull minecraft.dropped:minecraft.wither_skeleton_skull
scoreboard objectives add drop_e_crystal minecraft.dropped:minecraft.end_crystal
scoreboard objectives add use_d_scroll minecraft.used:map
scoreboard objectives add tnt_cooldown dummy
scoreboard objectives add direction_x dummy
scoreboard objectives add direction_y dummy
scoreboard objectives add direction_z dummy
scoreboard objectives add l_blast_timer dummy
scoreboard objectives add gliding minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add random_loot_t dummy
scoreboard players set $mod random_loot_t 7

scoreboard objectives add pregame dummy

gamerule doTileDrops false

kill @e[type=area_effect_cloud,tag=start_button_text]
summon minecraft:area_effect_cloud 0 69.0 8 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["start_button_text"],CustomName:'[{"text":"- ","color":"gray"},{"text":"🗡","color":"light_purple","bold":true},{"text":" Start ","color":"dark_purple"},{"text":"🗡","color":"light_purple","bold":true},{"text":" -","color":"gray"}]',CustomNameVisible:1b}

scoreboard objectives add prefix dummy

team add cr
team modify cr color light_purple
team modify cr prefix [{"text":"{","color":"white","bold":true},{"text":"C","color":"aqua","bold":true},{"text":"R","color":"dark_aqua","bold":true},{"text":"} ","color":"white","bold":true}]
team modify cr collisionRule never

team add manager
team modify manager color light_purple
team modify manager prefix {"text":"{Manager} ","color":"yellow"}
team modify manager collisionRule never

scoreboard objectives add drop_ready_book minecraft.dropped:minecraft.knowledge_book


scoreboard objectives add shoot_bow minecraft.used:minecraft.bow

scoreboard objectives add age dummy

scoreboard objectives add drop_clock minecraft.dropped:minecraft.clock

scoreboard objectives add throw_snowball minecraft.used:minecraft.snowball

scoreboard objectives add calculate dummy

scoreboard objectives add throw_egg minecraft.used:minecraft.egg

gamerule maxEntityCramming 100000

scoreboard players set $minute number 1200

scoreboard objectives add lobby_y dummy


# setting up markers for elytra course.
kill @e[type=marker,tag=elytra_course_marker]
summon marker -44.0 59 8 {Tags:["elytra_course_marker","we_circle"]}
summon marker -91.0 45 8 {Tags:["elytra_course_marker","we_circle"]}

summon marker -115.0 41 22.0 {Tags:["elytra_course_marker","se_nw_circle","spec_circle"]}

summon marker -123 39 45.0 {Tags:["elytra_course_marker","ns_circle"]}
summon marker -123 33 72.0 {Tags:["elytra_course_marker","ns_circle"]}
summon marker -123 39 99.0 {Tags:["elytra_course_marker","ns_circle"]}

summon marker -134.0 36 121.0 {Tags:["elytra_course_marker","se_nw_circle","spec_circle"]}

summon marker -150 29 131 {Tags:["elytra_course_marker","special_circle_1","spec_circle"]}
summon marker -155 9.0 131 {Tags:["elytra_course_marker","special_circle_2","spec_circle"]}
summon marker -150 -11 131 {Tags:["elytra_course_marker","special_circle_3","spec_circle"]}

summon marker -126.0 -17 131 {Tags:["elytra_course_marker","we_circle"]}
summon marker -98.0 -12 131 {Tags:["elytra_course_marker","we_circle"]}
summon marker -77.0 -14 119.0 {Tags:["elytra_course_marker","se_nw_circle","spec_circle"]}

summon marker -69 -20 95.0 {Tags:["elytra_course_marker","ns_circle"]}
summon marker -69 -28 69.0 {Tags:["elytra_course_marker","ns_circle"]}
summon marker -69 -36 43.0 {Tags:["elytra_course_marker","ns_circle"]}
summon marker -69 -44 17.0 {Tags:["elytra_course_marker","ns_circle"]}

# parkour objectives
scoreboard objectives add parkour_time dummy
scoreboard objectives add end_parkour minecraft.dropped:minecraft.tipped_arrow
scoreboard players set $60 number 60
scoreboard players set $2 number 2

scoreboard objectives add rings_left dummy
scoreboard objectives add parkour_id dummy

scoreboard objectives add ring_sound dummy

scoreboard objectives add parkour_score dummy

scoreboard objectives add lobby_id dummy

kill @e[type=armor_stand,tag=lobby_die]
scoreboard objectives add leaderboard_pos dummy
summon armor_stand 0 50 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["parkour_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=parkour_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 50 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["parkour_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=parkour_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 50 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["parkour_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=parkour_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3
scoreboard players set @e[type=armor_stand,tag=parkour_leaderboard] parkour_score 1000000000

# flaoting nameplate
kill @e[type=area_effect_cloud,tag=elytra_course_nameplate]
summon minecraft:area_effect_cloud -26 68 8 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["elytra_course_nameplate"],CustomNameVisible:1b,CustomName:'[{"text":""}]'}

scoreboard objectives add competitive dummy

# new item objectives
scoreboard objectives add sniping_bow dummy
scoreboard objectives add drop_thief_beam minecraft.dropped:minecraft.magma_cream
scoreboard objectives add drop_reflector minecraft.dropped:minecraft.diamond

scoreboard players set $-1 number -1

scoreboard objectives add use_shield minecraft.used:minecraft.shield
scoreboard objectives add fake_strength dummy

scoreboard objectives add firework_shield_cool dummy

scoreboard objectives add random dummy

scoreboard objectives add tutorial dummy
scoreboard players set $map_set tutorial 0

# function tutorial:spawn_tutorial_text



# 
# An elytra is attached automatically to each player. To open it, press the SPACE button while in the air. Glide to the island below.

# world border timer scores
scoreboard players set $58000000 number 58000000
scoreboard players set $6000 number 6000
scoreboard players set $5 number 5

scoreboard objectives add parkour_start dummy