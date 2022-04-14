# called when a player enters a ring

function lobby:parkour/check_ring_eligibility
execute if entity @s[tag=can_enter_ring] run function lobby:parkour/enter_ring


tag @s remove can_enter_ring