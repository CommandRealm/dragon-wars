scoreboard players set @a[scores={damage=1..},tag=!elytra_immune] elytra 25
tag @a[scores={damage=1..},tag=!elytra_immune] remove e_cooldown
clear @a[scores={damage=1..},tag=!elytra_immune] elytra
scoreboard players reset @a damage
tag @a remove elytra_immune