scoreboard objectives add regs dummy
scoreboard players set @e[tag=regshead] showdetails -102
scoreboard players set @e[tag=regsbody] showdetails -102
replaceitem entity @e[tag=regsbody] armor.feet leather_boots{display:{color:16730112}}
replaceitem entity @e[tag=regsbody] armor.chest leather_chestplate{display:{color:16730112}}
replaceitem entity @e[tag=regsbody] armor.legs leather_leggings{display:{color:16777215}}