kill @e[tag=hippeh]
summon minecraft:armor_stand -21 67.5 30 {Tags:["credits","hippeh"],NoBasePlate:1,ShowArms:1,Rotation:[-67.5f,0.0f],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"Connop"}}],Pose:{RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1}
scoreboard objectives add HArm1 dummy
scoreboard objectives add HArm2 dummy
scoreboard objectives add HArmD dummy
scoreboard objectives add HArmD2 dummy
scoreboard players add @e[tag=hippeh] HArmD 0
scoreboard players add @e[tag=hippeh] HArmD2 0
scoreboard players set @e[scores={HArmD=0},tag=hippeh] HArmD 1
scoreboard players set @e[scores={HArmD2=0},tag=hippeh] HArmD2 1
scoreboard players set @e[tag=hippeh] showdetails -100
data merge entity @e[tag=hippeh,limit=1] {Pose:{RightArm:[-30.0f,-150.0f,55.0f],LeftArm:[-20.0f,-120.0f,-40.0f]}}
item replace entity @e[tag=hippeh] armor.feet with golden_boots
item replace entity @e[tag=hippeh] armor.chest with leather_chestplate{display:{color:6029316}}
item replace entity @e[tag=hippeh] armor.legs with golden_leggings
kill @e[tag=hippeh_elytra]
execute at @e[tag=hippeh] run summon armor_stand ~ ~ ~ {Tags:["credit_elytra","hippeh_elytra"],NoBasePlate:1,ShowArms:0,NoGravity:1,Invulnerable:1,Marker:1,ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b},{}]}
tp @e[tag=hippeh_elytra] @e[tag=hippeh,limit=1]