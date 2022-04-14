scoreboard players remove @a[scores={l_blast_timer=0..},gamemode=adventure] l_blast_timer 1
execute as @a[scores={l_blast_timer=21..}] at @s run playsound minecraft:ambient.underwater.loop master @s ~ ~ ~ 1 0
execute as @a[scores={l_blast_timer=20}] at @s run function item:levitate_shoot_beam
