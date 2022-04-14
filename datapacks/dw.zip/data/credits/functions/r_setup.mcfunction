scoreboard objectives add regs dummy
scoreboard players set @e[tag=regshead] showdetails -102
scoreboard players set @e[tag=regsbody] showdetails -102
item replace entity @e[tag=regsbody] armor.feet with leather_boots{display:{color:16730112}}
item replace entity @e[tag=regsbody] armor.chest with leather_chestplate{display:{color:16730112}}
item replace entity @e[tag=regsbody] armor.legs with leather_leggings{display:{color:16777215}}