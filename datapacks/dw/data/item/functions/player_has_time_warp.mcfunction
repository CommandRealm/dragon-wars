# called when a player has a time warp

# new points
execute as @a[nbt={Inventory:[{id:"minecraft:clock"}]},gamemode=adventure] at @s run function item:create_time_warp_point

# using clock
execute as @a[scores={drop_clock=1..},gamemode=adventure] at @s run function item:check_use_time_warp

# scheduling function
execute if entity @a[nbt={Inventory:[{id:"minecraft:clock"}]},gamemode=adventure] run schedule function item:player_has_time_warp 2t