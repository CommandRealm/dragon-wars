kill @e[type=item,nbt={Item:{id:"minecraft:feather"}},sort=nearest,limit=1]
execute unless entity @s[nbt={Inventory:[{id:"minecraft:elytra"}]}] run advancement grant @s[x=0,y=66,z=0,distance=500..] only minecraft:custom/use_tornado_jump
scoreboard players set @s drop_jump 0
tag @s[scores={elytra=0}] add e_cooldown
scoreboard players add @s[scores={elytra=0}] elytra 1
execute unless entity @s[x=0,y=66,z=0,distance=..500] run item replace entity @s armor.chest with air
effect give @s minecraft:levitation 1 30 true
scoreboard players set @s tornado_jump 30
playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 1 0.75