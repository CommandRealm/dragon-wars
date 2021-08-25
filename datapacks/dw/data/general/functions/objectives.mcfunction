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
team modify prg prefix {"text":"{Programmer} ","color":"blue"}
team modify srbld prefix {"text":"{Sr. Builder} ","color":"dark_blue"}
team modify srprg prefix {"text":"{Sr. Programmer} ","color":"dark_red"}
team modify true_gamer prefix [{"text":"(","color":"dark_green","bold":true},{"text":"The True Gamer","color":"green","bold":false},{"text":") ","color":"dark_green","bold":true}]
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
summon area_effect_cloud -7 68.5 43 {Duration:1000000,Tags:["item_hall_tp","lobby_ih_tp"]}
summon area_effect_cloud -1000 63 -52 {Duration:1000000,Tags:["item_hall_tp","ih_tp"]}
summon area_effect_cloud -1000 62 8 {Duration:1000000,Tags:["item_hall_tp","ih_tp"]}
scoreboard players set @e[tag=item_hall_tp] item_hall_tp 0
kill @e[tag=floating_nameplate]
summon armor_stand -7 71 43 {Invisible:1,Invulnerable:1,Marker:1b,NoGravity:1b,CustomName:'{"text":"Item Hall","color":"yellow","underlined":true}',Tags:["floating_nameplate"],CustomNameVisible:1b}
summon armor_stand 0 69 9 {Invisible:1,Invulnerable:1,Marker:1b,NoGravity:1b,CustomName:'{"text":"Menu","color":"dark_purple","underlined":true}',Tags:["floating_nameplate"],CustomNameVisible:1b}
summon armor_stand -1000 65 -52 {Invisible:1,Invulnerable:1,Marker:1b,NoGravity:1b,CustomName:'{"text":"Lobby","color":"light_purple","underlined":true}',Tags:["floating_nameplate"],CustomNameVisible:1b}
summon armor_stand -1000 64 8 {Invisible:1,Invulnerable:1,Marker:1b,NoGravity:1b,CustomName:'{"text":"Lobby","color":"light_purple","underlined":true}',Tags:["floating_nameplate"],CustomNameVisible:1b}
summon armor_stand 13 69 -6 {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,CustomName:'{"text":"Elytra Pad","color":"dark_aqua","underlined":true}',Tags:["floating_nameplate"],CustomNameVisible:1b}
setblock -1002 62 -8 air
setblock -1002 62 -8 jungle_wall_sign[facing=east]{Text1:'',Text2:'{"text":"[ALL ON]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:all_on"}}',Text3:'',Text4:''}
setblock -998 62 -8 air
setblock -998 62 -8 jungle_wall_sign[facing=west]{Text1:'',Text2:'{"text":"[ALL OFF]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:all_off"}}',Text3:'',Text4:''}
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
scoreboard objectives add stats_kd
scoreboard objectives add stats_wins dummy
scoreboard objectives remove stats_flown
scoreboard objectives add stats_flown_cm minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add stats_flown dummy
gamerule reducedDebugInfo true
gamerule sendCommandFeedback false
scoreboard objectives add rand_cosmetic dummy
scoreboard objectives add resetting dummy
scoreboard objectives add random_map dummy
scoreboard players set $mod random_map 13
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
scoreboard objectives add tnt_cooldown dummy
scoreboard objectives add direction_x dummy
scoreboard objectives add direction_y dummy
scoreboard objectives add direction_z dummy
scoreboard objectives add l_blast_timer dummy
scoreboard objectives add gliding minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add random_loot_t dummy
scoreboard players set $mod random_loot_t 7