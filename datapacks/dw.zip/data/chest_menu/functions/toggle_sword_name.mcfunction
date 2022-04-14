execute if entity @s[scores={sword=18}] run tag @s add toggle_sword_name
scoreboard players set @s sword 18
scoreboard players set @s[tag=toggle_sword_name] sword 0
function chest_menu:start_advancement_unlocks
tag @s remove toggle_sword_name