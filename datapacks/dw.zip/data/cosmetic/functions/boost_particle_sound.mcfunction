# called to play boost particle sound

tag @s add played_sound
execute as @p[gamemode=adventure,sort=nearest,limit=1] if entity @s[scores={particle=1}] at @s run playsound minecraft:entity.blaze.death master @a ~ ~ ~ 1 0.67
execute as @p[gamemode=adventure,sort=nearest,limit=1] if entity @s[scores={particle=2}] at @s run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 0.67
execute as @p[gamemode=adventure,sort=nearest,limit=1] if entity @s[scores={particle=3}] at @s run playsound minecraft:entity.generic.splash master @a ~ ~ ~ 1 0.67
execute as @p[gamemode=adventure,sort=nearest,limit=1] if entity @s[scores={particle=4}] at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1 2
execute as @p[gamemode=adventure,sort=nearest,limit=1] if entity @s[scores={particle=5}] at @s run playsound minecraft:block.slime_block.fall master @a ~ ~ ~ 1 0.67
execute as @p[gamemode=adventure,sort=nearest,limit=1] if entity @s[scores={particle=6}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.529732
execute as @p[gamemode=adventure,sort=nearest,limit=1] if entity @s[scores={particle=6}] at @s run playsound minecraft:block.note_block.guitar master @a ~ ~ ~ 1 0.667420
execute as @p[gamemode=adventure,sort=nearest,limit=1] if entity @s[scores={particle=6}] at @s run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 0.793701
execute as @p[gamemode=adventure,sort=nearest,limit=1] if entity @s[scores={particle=7}] at @s run playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 1 0
execute as @p[gamemode=adventure,sort=nearest,limit=1] if entity @s[scores={particle=8}] at @s run playsound minecraft:entity.squid.squirt master @a ~ ~ ~ 1 1
execute as @p[gamemode=adventure,sort=nearest,limit=1] if entity @s[scores={particle=9}] at @s run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1 0


# execute if entity @a[scores={particle=1}] run 
# execute if entity @a[scores={particle=2}] run particle enchant ~ ~ ~ 0 0 0 0 1
# # playsound minecraft:block.enchantment_table.use master @a ~ ~ ~
# execute if entity @a[scores={particle=3}] run particle rain ~ ~ ~ 0 0 0 0 1
# playsound minecraft:entity.generic.splash master @a ~ ~ ~ 1 1
# execute if entity @a[scores={particle=4}] run particle totem_of_undying ~ ~ ~ 0 0 0 0 1
# playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1 2
# execute if entity @a[scores={particle=5}] run particle item_slime ~ ~ ~ 0 0 0 0 1
# playsound minecraft:block.slime_block.fall master @a
# execute if entity @a[scores={particle=6}] run particle minecraft:note ~ ~ ~ 0 0 0 1 1
# execute if entity @a[scores={particle=7}] run particle spit ~ ~ ~ 0 0 0 0 1
# /playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 1 0
# execute if entity @a[scores={particle=8}] run particle squid_ink ~ ~ ~ 0 0 0 0 1
# playsound minecraft:entity.squid.squirt master @a ~ ~ ~ 1 1
# execute if entity @a[scores={particle=9}] run function cosmetic:summon_particle_loot
# playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1 0