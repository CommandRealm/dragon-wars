execute as @e[tag=firework,scores={firework=0}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:firework_rocket",Count:1b,tag:{HideFlags:63,echest:1,display:{Lore:['{"text":"A flight duration I rocket.","italic":false,"color":"yellow"}'],Name:'{"italic":false,"color":"yellow","text":"Firework"}'},Fireworks:{Flight:1}}},Motion:[0.0d,0.25d,0.0d]}
execute as @e[tag=firework,scores={firework=0}] at @s run playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 1 1
execute as @e[tag=firework,scores={firework=0}] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.025 10
execute if score $time firework_time matches 0 run scoreboard players set @e[tag=firework,scores={firework=0}] firework 300
execute if score $time firework_time matches 1 run scoreboard players set @e[tag=firework,scores={firework=0}] firework 200
execute if score $time firework_time matches 2 run scoreboard players set @e[tag=firework,scores={firework=0}] firework 100

execute if score $time firework_time matches 0 run xp set @a[tag=playing] 15 levels
execute if score $time firework_time matches 1 run xp set @a[tag=playing] 10 levels
execute if score $time firework_time matches 2 run xp set @a[tag=playing] 5 levels