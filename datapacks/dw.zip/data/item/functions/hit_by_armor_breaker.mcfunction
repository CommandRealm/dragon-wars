# called when we're hit by an armor Breaker

# clearing slots
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

# sound
execute unless entity @s[tag=!iron,tag=!chain,tag=!ninja,tag=!lucky,tag=!spartan,tag=!gladiator,tag=!jump_boost] run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 0

# removing tags
tag @s remove iron
tag @s remove chain
tag @s remove ninja
tag @s remove lucky
tag @s remove spartan
tag @s remove gladiator
tag @s remove jump_boost

# removing advancement
advancement revoke @s only game:hit_by_armor_breaker