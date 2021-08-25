particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.025 10
summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["no_rocket_spawn"]}
kill @e[x=0,y=66,z=0,type=item,nbt={Item:{id:"minecraft:firework_rocket"}},distance=..300]
summon item ~ ~ ~ {Item:{id:"minecraft:firework_rocket",Count:1b,tag:{HideFlags:63,echest:1,display:{Lore:['{"text":"A flight duration I rocket.","italic":false,"color":"yellow"}'],Name:'{"text":"Training Course Rocket","color":"yellow","italic":false}'}}},Motion:[0.0d,0.2d,0.0d],Tags:["rocket_for_lobby"]}
playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 1 1