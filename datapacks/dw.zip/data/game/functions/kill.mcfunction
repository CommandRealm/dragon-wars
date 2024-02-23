advancement grant @a[scores={kill=1..},tag=playing] only advancements:custom/get_a_kill
advancement grant @a[scores={kill=1..,gliding=1..},tag=playing] only advancements:custom/get_a_kill_while_flying
execute as @a[scores={kill=1..},tag=playing] at @s at @s[y=5,distance=..10,gamemode=adventure] run advancement grant @s only advancements:custom/get_a_kill_near_void
execute as @a[scores={kill=1..},tag=playing] at @s if entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:17b}]}] run give @s arrow 5
execute as @a[scores={kill=1..},tag=playing] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:17b}]}] run tag @s add give_arrows
execute as @a[scores={kill=1..},tag=playing] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:17b}]}] run item replace entity @s inventory.8 with arrow
execute as @a[scores={kill=1..},tag=playing,tag=give_arrows] at @s run give @s arrow 4
tag @a remove give_arrows
effect give @a[scores={kill=1..,axe_dealt=1..},tag=playing,nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] regeneration 1 255 true
effect give @a[scores={kill=1..,axe_dealt=1..},tag=playing,nbt={SelectedItem:{id:"minecraft:iron_axe"}}] strength 10 0 false
advancement grant @a[scores={kill=1..,axe_dealt=1..},tag=playing,nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] only advancements:custom/kill_with_vampiric_stake
advancement grant @a[scores={kill=1..,axe_dealt=1..},tag=playing,nbt={SelectedItem:{id:"minecraft:iron_axe"}}] only advancements:custom/kill_with_rage_axe
advancement grant @a[scores={kill=1..,axe_dealt=1..},tag=playing,nbt={SelectedItem:{id:"minecraft:iron_axe"}}] only advancements:custom/kill_with_rage_axe
execute if entity @a[tag=give_treasure_advancement] run advancement grant @a[scores={kill=1..},tag=playing] only advancements:custom/kill_player_with_treasure_blocks
tag @a remove give_treasure_advancement
scoreboard players set @a kill 0
