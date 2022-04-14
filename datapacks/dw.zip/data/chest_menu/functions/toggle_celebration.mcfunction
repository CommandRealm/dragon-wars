execute if entity @s[scores={celeb_number=18}] run tag @s add toggle_celebration
scoreboard players set @s celeb_number 18
scoreboard players set @s[tag=toggle_celebration] celeb_number 0
function chest_menu:start_advancement_unlocks
tag @s remove toggle_celebration