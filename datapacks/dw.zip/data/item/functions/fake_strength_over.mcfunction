# called when the fake strength is over

attribute @s generic.attack_damage base set 1.0
scoreboard players reset @s fake_strength

particle smoke ~ ~ ~ 0.5 0.75 0.5 0.2 100
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 0

scoreboard players reset @s fake_strength