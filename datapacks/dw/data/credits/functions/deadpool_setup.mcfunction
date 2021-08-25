kill @e[tag=deadpool]
summon minecraft:armor_stand -19 67.5 28 {Tags:["credits","deadpool"],NoBasePlate:1,ShowArms:1,Rotation:[-22.5f,0.0f],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"Captain_Deadpool"}}],Pose:{RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1}
scoreboard objectives add DArm dummy
scoreboard players add @e[tag=deadpool] DArmD 0
scoreboard players set @e[scores={DArmD=0},tag=deadpool] DArmD 1
data merge entity @e[tag=deadpool,limit=1] {Pose:{RightArm:[-20.20f,80.0f,75.0f],LeftArm:[-35.0f,-70.0f,-70.0f],Head:[-40.0f,0.0f,0.0f]}}
replaceitem entity @e[tag=deadpool] armor.feet leather_boots{display:{color:5479591}}
replaceitem entity @e[tag=deadpool] armor.chest leather_chestplate{display:{color:9647403}}
replaceitem entity @e[tag=deadpool] armor.legs leather_leggings{display:{color:5479591}}
kill @e[tag=deadpool_elytra]
execute at @e[tag=deadpool] run summon armor_stand ~ ~ ~ {Invisible:1,Tags:["credit_elytra","deadpool_elytra"],NoBasePlate:1,ShowArms:0,NoGravity:1,Invulnerable:1,Marker:1,ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b},{}]}
tp @e[tag=deadpool_elytra] @e[tag=deadpool,limit=1]