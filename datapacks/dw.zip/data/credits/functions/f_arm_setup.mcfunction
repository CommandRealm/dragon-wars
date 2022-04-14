kill @e[tag=pl]
summon minecraft:armor_stand -21 68 28 {Tags:["credits","pl"],NoBasePlate:1,ShowArms:1,Rotation:[-45.0f,0.0f],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"FalconReign"}}],Pose:{RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1}
scoreboard objectives add pl dummy
scoreboard objectives add pl2 dummy
scoreboard objectives add pld dummy
scoreboard objectives add pld2 dummy
scoreboard players set direction pld 1
data merge entity @e[tag=pl,limit=1] {Pose:{RightArm:[-30.0f,20.0f,55.0f],LeftArm:[-70.0f,30.0f,-100.0f]}}
item replace entity @e[tag=pl] armor.feet with iron_boots
item replace entity @e[tag=pl] armor.chest with leather_chestplate{display:{color:327737}}
item replace entity @e[tag=pl] armor.legs with iron_leggings
kill @e[tag=falcon_elytra]
execute at @e[tag=pl] run summon armor_stand ~ ~ ~ {Tags:["credit_elytra","falcon_elytra"],NoBasePlate:1,ShowArms:0,NoGravity:1,Invulnerable:1,Marker:1,ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b},{}]}
tp @e[tag=falcon_elytra] @e[tag=pl,limit=1]