# called when a player is hit by a snowball.

# sound
execute if data entity @s Inventory[{id:"minecraft:firework_rocket"}] run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 2

# clear
clear @s firework_rocket

