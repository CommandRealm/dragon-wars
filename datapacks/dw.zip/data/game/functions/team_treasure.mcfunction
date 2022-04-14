execute as @a[tag=tp_to_void] at @s run function game:tp_to_void
execute unless score $time cooldown matches 1.. as @a[scores={warning=159},gamemode=adventure] at @s run function game:treasure_back_to_map
execute as @a[tag=warning,gamemode=adventure] at @s run function game:treasure_back_to_map
execute as @a[scores={kill_sound=1..}] at @s run function game:kill_sound
scoreboard players remove $time treasure_time 1
execute if score $time treasure_time matches 0 if score $block treasure_time matches 1.. run function game:treasure_spawn
execute if entity @e[tag=glowing,type=magma_cube] run function game:check_glowing
scoreboard players set @a[tag=playing] treasure_sidebar 0
scoreboard players add @a[tag=playing,nbt={Inventory:[{id:"minecraft:iron_block"}]}] treasure_sidebar 1
scoreboard players add @a[tag=playing,nbt={Inventory:[{id:"minecraft:gold_block"}]}] treasure_sidebar 1
scoreboard players add @a[tag=playing,nbt={Inventory:[{id:"minecraft:lapis_block"}]}] treasure_sidebar 1
scoreboard players add @a[tag=playing,nbt={Inventory:[{id:"minecraft:emerald_block"}]}] treasure_sidebar 1
scoreboard players add @a[tag=playing,nbt={Inventory:[{id:"minecraft:diamond_block"}]}] treasure_sidebar 1
execute as @a[tag=playing] at @s run scoreboard players operation @s treasure_side2 = @s treasure
execute as @a[tag=playing] at @s run scoreboard players operation @s treasure_side2 -= @s treasure_sidebar
execute as @a[tag=playing] at @s unless entity @s[scores={treasure_side2=0}] run scoreboard players operation @s treasure = @s treasure_sidebar

scoreboard players set @a[tag=playing,scores={treasure_sidebar=..3}] treasure_time 0
scoreboard players add @a[tag=playing,scores={treasure_sidebar=4..}] treasure_time 1
execute as @a[tag=playing,scores={treasure_sidebar=4..,treasure_time=1}] at @s run function game:announce_treasure_closeness


execute if score $time cooldown matches 0 if score $game state matches 1 if entity @a[scores={treasure=5}] run function game:treasure_end

execute as @a[scores={death=1..}] at @s run function game:respawn_start
execute as @e[type=item,nbt={Item:{tag:{Treasure:1}}}] at @s run function game:treasure_item
effect give @a[scores={treasure=1..},tag=playing] glowing 1 255 true
execute as @a[tag=playing,gamemode=adventure] at @s run scoreboard players set @e[type=item,nbt={Item:{tag:{Treasure:1}}},distance=..15] treasure_alone 0
scoreboard players add @e[type=item,nbt={Item:{tag:{Treasure:1}}}] treasure_alone 1
execute as @e[type=item,scores={treasure_alone=600},nbt={Item:{tag:{Treasure:1}}}] run function game:treasure_respawn