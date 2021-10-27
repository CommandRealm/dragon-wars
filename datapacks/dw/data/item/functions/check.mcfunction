execute as @a[scores={drop_tnt=1..}] at @s run function item:dropped_tnt
scoreboard players remove @a[scores={tnt_cooldown=1..}] tnt_cooldown 1
execute if entity @e[tag=throwable_tnt] run function item:thrown_tnt
execute as @e[type=trident] at @s at @s[y=-5,distance=..10] at @s run function item:trident_tp
execute as @e[type=trident,scores={trident_tp=1..}] at @s run function item:trident_cooldown

execute as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"},OnGround:1b},tag=!no_activate] at @s run function item:horde_start
execute as @e[type=item,nbt={Item:{id:"minecraft:ice"},OnGround:1b},tag=!no_activate] at @s run function item:set_ice_mine
execute as @e[type=area_effect_cloud,tag=ice_mine] at @s if entity @a[tag=playing,gamemode=adventure,distance=..1.5,nbt={OnGround:1b}] run function item:trigger_ice_mine
execute as @e[tag=ice_capsule,nbt={Age:199}] at @s run function item:break_ice
execute as @e[type=arrow,nbt={PierceLevel:2b}] at @s as @e[tag=ice_capsule,distance=..1.5] at @s run function item:break_ice
execute as @e[type=arrow,nbt={PierceLevel:1b}] at @s as @e[tag=ice_capsule,distance=..1.5] at @s run function item:break_ice
execute as @e[type=arrow] at @s unless entity @s[nbt={Fire:-1s}] as @e[tag=ice_capsule,distance=..1.5] at @s run function item:break_ice
execute if entity @a[scores={armor_delay=1..}] run function item:armor_delay
execute as @e[type=item,nbt={Item:{id:"minecraft:chiseled_polished_blackstone"},OnGround:1b},tag=!unusable] at @s run function item:set_time_bomb
execute if entity @e[type=area_effect_cloud,tag=time_bomb] run function item:active_time_bomb
execute as @a[scores={drop_e_crystal=1..}] at @s run function item:start_levitation_blast
execute if entity @a[scores={l_blast_timer=0..}] run function item:levitation_timer
execute if entity @e[tag=laser_beam,type=area_effect_cloud] run function item:laser_beam


# new items 1.17 updates
execute as @a[advancements={game:hit_by_armor_breaker=true}] at @s run function item:hit_by_armor_breaker

# jump boost
effect give @a[tag=jump_boost] jump_boost 1 1 true

# when we shoot a bow
execute as @a[scores={shoot_bow=1..}] at @s run function item:shoot_bow

# if there is an explosive
execute as @e[type=arrow,tag=explosive_arrow] at @s run function item:active_explosive_arrow

# when we're hit by explosive arrow
execute as @a[advancements={game:hit_by_explosive_arrow=true}] at @s run function item:hit_by_explosive_arrow

# if a player has a time Warp
execute if entity @a[nbt={Inventory:[{id:"minecraft:clock"}]},gamemode=adventure] run function item:player_has_time_warp

# throwing a snowball
execute as @a[scores={throw_snowball=1..}] at @s run function item:throw_snowball

# if a snowball exists
execute if entity @e[type=snowball] run function item:active_snowball

# death scythe
execute as @a[tag=!has_death_scythe,nbt={Inventory:[{id:"minecraft:netherite_hoe"}]}] at @s run function item:pickup_death_scythe
execute as @a[tag=has_death_scythe] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_hoe"}]}] run function item:no_death_scythe



# egg
execute as @a[scores={throw_egg=1..}] at @s run function item:throw_egg

# if an egg exists
execute if entity @e[type=egg] run function item:active_egg
