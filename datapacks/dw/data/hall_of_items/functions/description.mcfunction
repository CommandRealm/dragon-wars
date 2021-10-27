execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:iron_sword"}}] run tellraw @s {"text":"Iron Sword - A generic iron sword.","color":"white"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:diamond_sword"}}] run tellraw @s {"text":"Diamond Sword - A generic diamond sword.","color":"aqua"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:golden_sword"}}] run tellraw @s {"text":"Fire Sword - A golden sword enchanted with fire aspect I.","color":"red"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,tag=model_iron] run tellraw @s {"text":"Iron Armor - Drop to equip iron armor. ","color":"gray"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,tag=model_archery] run tellraw @s {"text":"Archery Protection Armor - Drop to equip chainmail armor enchanted with projectile protection IV.","color":"dark_gray"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,tag=model_lucky] run tellraw @s {"text":"Lucky Armor - Drop to equip gold armor that gives extra items.","color":"yellow"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,tag=model_cactus] run tellraw @s {"text":"Cactus Armor - Drop to equip leather armor enchanted with thorns I.","color":"dark_green"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,tag=model_gladiator] run tellraw @s {"text":"Gladiator Armor - Drop to equip leather armor that grants an attack buff.","color":"dark_red"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,tag=model_ninja] run tellraw @s {"text":"Ninja Armor - Drop to equip leather armor that grants a speed buff.","color":"dark_aqua"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:iron_axe"}}] run tellraw @s {"text":"Rage Axe - An axe that gives strength 1 after getting a kill. ","color":"dark_red"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:wooden_sword"}}] run tellraw @s {"text":"Vampiric Stake - A buffed wooden sword that heals you after getting a kill.","color":"red"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:stick"}}] run tellraw @s {"text":"Knockback Stick - A stick enchanted with knockback II.","color":"yellow"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,tag=model_power] run tellraw @s {"text":"Power Bow - A bow enchanted with power I.","color":"yellow"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,tag=model_punch] run tellraw @s {"text":"Punch Bow - A bow enchanted with punch II.","color":"gold"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,tag=model_flame] run tellraw @s {"text":"Flame Bow - A bow with flame I.","color":"red"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,tag=model_piercing] run tellraw @s {"text":"Piercing Crossbow - A crossbow enchanted with piercing II.","color":"red"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,tag=model_multishot] run tellraw @s {"text":"Multishot Crossbow - A crossbow enchanted with multishot I. ","color":"dark_red"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:trident"}}] run tellraw @s {"text":"Trident - A trident enchanted with loyalty V.  ","color":"dark_aqua"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:splash_potion"}}] run tellraw @s {"text":"Healing Potion - Throwable health II potion.","color":"light_purple"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:lingering_potion"}}] run tellraw @s {"text":"Lingering Potion of Poison - Throwable lingering potion of poison I.","color":"green"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:egg"}}] run tellraw @s {"text":"Egg of Slow Falling - Throw to give nearby targets slow falling.","color":"yellow"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:tnt"}}] run tellraw @s {"text":"TNT - Drop to throw TNT. ","color":"red"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:rotten_flesh"}}] run tellraw @s {"text":"Monster Horde - Drop to spawn a horde of monsters.","color":"dark_red"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:ice"}}] run tellraw @s {"text":"Ice Mine - Drop to create an ice trap.","color":"aqua"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:brewing_stand"}}] run tellraw @s {"text":"Risky Brew - Drop to gain a random potion effect.","color":"light_purple"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:ender_eye"}}] run tellraw @s {"text":"Swapper Beam - Drop to shoot a laser that swaps places with other players.","color":"gold"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:shield"}}] run tellraw @s {"text":"Shield - A normal shield.","color":"gold"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:feather"}}] run tellraw @s {"text":"Tornado Jump - Drop to gain levitation for 1 second.","color":"white"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:chiseled_polished_blackstone"}}] run tellraw @s {"text":"Time Bomb - Drop to set a timed bomb.","color":"dark_gray"}
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:end_crystal"}}] run tellraw @s {"text":"Levitation Blast - Drop to gain levitation before shooting a laser.","color":"#f9baff"}





execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:netherite_hoe"}}] run tellraw @s [{"text":"Death ","color":"dark_gray"},{"text":"Scythe - A powerful melee weapon that lowers the user's max health when this item is in their inventory.","color":"gray"}]
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:iron_pickaxe"}}] run tellraw @s [{"text":"Armor ","color":"gray"},{"text":"Breaker - A weapon that breaks the armor of any player it hits.","color":"gold"}]
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:bow",tag:{explosive_bow:1}}}] run tellraw @s [{"text":"Explosive ","color":"red"},{"text":"Bow - A bow that explodes when it hits a player. Each shot uses up three arrows.","color":"gray"}]
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,tag=jump_boost_armor] run tellraw @s [{"text":"Leaping ","color":"green"},{"text":"Armor - Drop to equip leather armor that grants jump boost.","color":"gray"}]
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:clock"}}] run tellraw @s [{"text":"Time ","color":"gold"},{"text":"Warp - Drop to warp to your position three seconds ago.","color":"dark_purple"}]
execute at @e[type=item,tag=item_model,sort=nearest,limit=1] if entity @e[distance=..1,nbt={Item:{id:"minecraft:snowball"}}] run tellraw @s [{"text":"Firework ","color":"gray"},{"text":"Remover - Clears fireworks from players near the projectile.","color":"dark_red"}]

playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 2