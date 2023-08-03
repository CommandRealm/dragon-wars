# called to clear and re test
clear @s firework_rocket{display:{Lore:['{"text":"A flight duration I rocket.","italic":false,"color":"yellow"}']}} 1
execute if entity @s[tag=playing] run summon item ~ ~ ~ {Item:{id:"minecraft:firework_rocket",Count:1b,tag:{super:0,HideFlags:63,echest:1,display:{Lore:['{"text":"A flight duration I rocket.","italic":false,"color":"yellow"}'],Name:'{"italic":false,"color":"yellow","text":"Firework"}'},Fireworks:{Flight:1}}},Motion:[0.0d,0.25d,0.0d],PickupDelay:20}
function game:inventory_check/fireworks/check