tag @a[nbt={OnGround:1b},gamemode=adventure,scores={elytra=1..}] add e_cooldown
scoreboard players remove @a[scores={elytra=1..},tag=e_cooldown] elytra 1
clear @a[scores={elytra=1..}] elytra
tag @a[scores={elytra=0}] remove e_cooldown
