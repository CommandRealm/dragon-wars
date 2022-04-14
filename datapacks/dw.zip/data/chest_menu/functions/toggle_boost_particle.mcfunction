execute if entity @s[scores={particle=9}] run tag @s add toggle_boost_particle
scoreboard players set @s particle 9
scoreboard players set @s[tag=toggle_boost_particle] particle 0
function chest_menu:start_advancement_unlocks
tag @s remove toggle_boost_particle