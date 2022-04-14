# special ring checks


execute as @e[type=marker,tag=se_nw_circle] at @s positioned ~ ~-3 ~ as @a[tag=elytra_course,dx=1,dy=6,dz=1] run function lobby:parkour/check_player_enter_ring
execute as @e[type=marker,tag=se_nw_circle] at @s positioned ~1 ~-3 ~1 as @a[tag=elytra_course,dx=1,dy=6,dz=1] run function lobby:parkour/check_player_enter_ring
execute as @e[type=marker,tag=se_nw_circle] at @s positioned ~2 ~-3 ~2 as @a[tag=elytra_course,dx=1,dy=6,dz=1] run function lobby:parkour/check_player_enter_ring
execute as @e[type=marker,tag=se_nw_circle] at @s positioned ~-1 ~-3 ~-1 as @a[tag=elytra_course,dx=1,dy=6,dz=1] run function lobby:parkour/check_player_enter_ring
execute as @e[type=marker,tag=se_nw_circle] at @s positioned ~-2 ~-3 ~-2 as @a[tag=elytra_course,dx=1,dy=6,dz=1] run function lobby:parkour/check_player_enter_ring


execute as @e[type=marker,tag=special_circle_1] at @s positioned ~2 ~-2 ~-3 as @a[tag=elytra_course,dx=1,dy=0,dz=5] run function lobby:parkour/check_player_enter_ring
execute as @e[type=marker,tag=special_circle_1] at @s positioned ~1 ~-1 ~-3 as @a[tag=elytra_course,dx=1,dy=0,dz=5] run function lobby:parkour/check_player_enter_ring
execute as @e[type=marker,tag=special_circle_1] at @s positioned ~-1 ~1 ~-3 as @a[tag=elytra_course,dx=1,dy=0,dz=5] run function lobby:parkour/check_player_enter_ring
execute as @e[type=marker,tag=special_circle_1] at @s positioned ~-2 ~2 ~-2 as @a[tag=elytra_course,dx=0,dy=0,dz=5] run function lobby:parkour/check_player_enter_ring

execute as @e[type=marker,tag=special_circle_2] at @s positioned ~-3 ~ ~-4 as @a[tag=elytra_course,dx=6,dy=1,dz=7] run function lobby:parkour/check_player_enter_ring
execute as @e[type=marker,tag=special_circle_2] at @s positioned ~3 ~ ~4 as @a[tag=elytra_course,dx=-7,dy=1,dz=-6] run function lobby:parkour/check_player_enter_ring


execute as @e[type=marker,tag=special_circle_3] at @s positioned ~-2 ~-2 ~3 as @a[tag=elytra_course,dx=-1,dy=1,dz=-5] run function lobby:parkour/check_player_enter_ring
execute as @e[type=marker,tag=special_circle_3] at @s positioned ~-1 ~-1 ~3 as @a[tag=elytra_course,dx=-1,dy=1,dz=-5] run function lobby:parkour/check_player_enter_ring
execute as @e[type=marker,tag=special_circle_3] at @s positioned ~1 ~1 ~3 as @a[tag=elytra_course,dx=-1,dy=1,dz=-5] run function lobby:parkour/check_player_enter_ring
execute as @e[type=marker,tag=special_circle_3] at @s positioned ~2 ~2 ~2 as @a[tag=elytra_course,dx=0,dy=1,dz=-5] run function lobby:parkour/check_player_enter_ring