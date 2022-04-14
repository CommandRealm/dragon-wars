# called when the player successfully blocks using a shield

# if we have special shields
execute unless score @s firework_shield_cool matches 1.. if entity @s[nbt={SelectedItem:{tag:{firework_shield:1}}}] run function item:get_firework_from_firework_shield
execute unless score @s firework_shield_cool matches 1.. unless entity @s[nbt={SelectedItem:{tag:{firework_shield:1}}}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{firework_shield:1}}]}] run function item:get_firework_from_firework_shield

execute if entity @s[nbt={SelectedItem:{tag:{strength_shield:1}}}] run function item:use_strength_shield

execute unless entity @s[nbt={SelectedItem:{tag:{strength_shield:1}}}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{strength_shield:1}}]}] run function item:use_strength_shield



# reset score
scoreboard players reset @s use_shield