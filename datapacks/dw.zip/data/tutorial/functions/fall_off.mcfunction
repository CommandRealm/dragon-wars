tellraw @s ["",{"text":"🗡 ","color":"light_purple","bold":true},{"text":"Whoops! Make sure not to do that in a game!","color":"red"}]
playsound minecraft:entity.generic.hurt master @s
tp @s -1000 121 -4 0 5
advancement grant @s only advancements:custom/fall_off_lobby

item replace entity @s armor.legs with air
item replace entity @s armor.feet with air