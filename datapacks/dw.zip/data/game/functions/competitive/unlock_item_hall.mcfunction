# called after the game is over to reset the item hall to how it was.

execute if entity @e[type=armor_stand,tag=saved_item_spawn] run kill @e[type=armor_stand,tag=item_spawn]

# restoring the current settings
tag @e[type=armor_stand,tag=saved_item_spawn] add item_spawn
tag @e[type=armor_stand,tag=saved_item_spawn] remove saved_item_spawn

# running all_run twice so that it toggles each one twice. This is to restore the signs
function hall_of_items:all_ran
function hall_of_items:all_ran

# blocking off the room
fill 51 72 -9 51 74 -7 minecraft:air replace iron_bars

# resetting the middle for normal
clone 63 66 -9 65 66 -7 63 72 -9
