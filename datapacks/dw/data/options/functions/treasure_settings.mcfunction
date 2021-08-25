fill -6 70 47 -7 68 47 air
setblock -7 68 47 minecraft:purpur_pillar
setblock -7 69 47 minecraft:glass
setblock -7 70 47 minecraft:jungle_pressure_plate
kill @e[type=item,x=-7,y=66,z=46,distance=..10,nbt={Item:{id:"minecraft:jungle_sign"}}] 
kill @e[type=item,x=-7,y=66,z=46,distance=..10,nbt={Item:{id:"minecraft:jungle_pressure_plate"}}]
kill @e[tag=display_round]
kill @e[tag=display_kill]
kill @e[tag=display_treasure]
scoreboard players remove $time treasure_spawn 300
function options:add_treasure_spawn
