execute unless entity @s[tag=!no_msg] run playsound minecraft:ui.button.click master @s ~ ~ ~ 100000 1
tellraw @s[tag=!no_msg] {"text":"All items are off.","color":"red"}
tag @s add no_msg
tag @r add no_toggle
function hall_of_items:iron_sword
function hall_of_items:diamond_sword
function hall_of_items:fire_sword
function hall_of_items:rage_axe
function hall_of_items:vampiric_stake
function hall_of_items:kb_stick
function hall_of_items:iron_armor
function hall_of_items:archery_armor
function hall_of_items:lucky_armor
function hall_of_items:ninja_armor
function hall_of_items:cactus_armor
function hall_of_items:gladiator_armor
function hall_of_items:power_bow
function hall_of_items:punch_bow
function hall_of_items:flame_bow
function hall_of_items:piercing_crossbow
function hall_of_items:multishot_crossbow
function hall_of_items:trident
function hall_of_items:health_potion
function hall_of_items:lingering_poison
function hall_of_items:egg_of_slow_falling
function hall_of_items:tnt
function hall_of_items:ice_mine
function hall_of_items:monster_horde
function hall_of_items:brewing_stand
function hall_of_items:tornado_jump
function hall_of_items:shield
function hall_of_items:tp_beam
function hall_of_items:time_bomb
function hall_of_items:levitation_blast

function hall_of_items:death_scythe
function hall_of_items:explosive_bow
function hall_of_items:jump_boost_armor
function hall_of_items:time_warp
function hall_of_items:armor_breaker
function hall_of_items:elytra_remover
tag @a remove no_toggle
tag @a[tag=!no_remove_msg] remove no_msg