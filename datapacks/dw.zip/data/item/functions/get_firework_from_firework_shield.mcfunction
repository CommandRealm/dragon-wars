# called when we use a firework shield

# giving firework
give @s firework_rocket{HideFlags:63,echest:1,display:{Lore:['{"text":"A flight duration I rocket.","italic":false,"color":"yellow"}'],Name:'{"italic":false,"color":"yellow","text":"Firework"}'},Fireworks:{Flight:1}}

particle firework ~ ~1 ~ 0 0 0 0.2 75

# sound
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1.75


scoreboard players set @s firework_shield_cool 20