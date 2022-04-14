# called when we successfully use a strength shield

scoreboard players set @s fake_strength 100
attribute @s generic.attack_damage base set 2.5


playsound block.lodestone.break master @a ~ ~ ~ 1 2
playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 1 1.25