# called to lock the item hall.


# saving the current settings
tag @e[type=armor_stand,tag=item_spawn] add saved_item_spawn
tag @e[type=armor_stand,tag=item_spawn] remove item_spawn

# enabling all items for competitive
function hall_of_items:all_on

# blocking off the room
fill 51 72 -9 51 74 -7 minecraft:iron_bars replace air

# setting the middle for comp
clone 63 64 -9 65 64 -7 63 72 -9

# tping people out
tp @a[x=52,y=72,z=-15,dx=25,dy=8,dz=13] 45 73 -8


execute store result score $item_count calculate if entity @e[type=item,tag=item_model]
execute store result score $item_calculate calculate if entity @e[type=item,tag=item_model]