tag @s add no_msg
tag @s add no_remove_msg
function hall_of_items:all_off
playsound minecraft:ui.button.click master @s ~ ~ ~ 100000 1
tellraw @s {"text":"All items are on.","color":"green"}
tag @p add toggle
function hall_of_items:iron_sword
tag @p add toggle
function hall_of_items:diamond_sword
tag @p add toggle
function hall_of_items:fire_sword
tag @p add toggle
function hall_of_items:rage_axe
tag @p add toggle
function hall_of_items:vampiric_stake
tag @p add toggle
function hall_of_items:kb_stick
tag @p add toggle
function hall_of_items:iron_armor
tag @p add toggle
function hall_of_items:archery_armor
tag @p add toggle
function hall_of_items:lucky_armor
tag @p add toggle
function hall_of_items:ninja_armor
tag @p add toggle
function hall_of_items:cactus_armor
tag @p add toggle
function hall_of_items:gladiator_armor
tag @p add toggle
function hall_of_items:power_bow
tag @p add toggle
function hall_of_items:punch_bow
tag @p add toggle
function hall_of_items:flame_bow
tag @p add toggle
function hall_of_items:piercing_crossbow
tag @p add toggle
function hall_of_items:multishot_crossbow
tag @p add toggle
function hall_of_items:trident
tag @p add toggle
function hall_of_items:health_potion
tag @p add toggle
function hall_of_items:lingering_poison
tag @p add toggle
function hall_of_items:egg_of_slow_falling
tag @p add toggle
function hall_of_items:tnt
tag @p add toggle
function hall_of_items:ice_mine
tag @p add toggle
function hall_of_items:monster_horde
tag @p add toggle
function hall_of_items:brewing_stand
tag @p add toggle
function hall_of_items:tornado_jump
tag @p add toggle
function hall_of_items:shield
tag @p add toggle
function hall_of_items:tp_beam
tag @p add toggle
function hall_of_items:time_bomb
tag @p add toggle
function hall_of_items:levitation_blast

tag @p add toggle
function hall_of_items:death_scythe
tag @p add toggle
function hall_of_items:armor_breaker
tag @p add toggle
function hall_of_items:explosive_bow
tag @p add toggle
function hall_of_items:jump_boost_armor
tag @p add toggle
function hall_of_items:time_warp
tag @p add toggle
function hall_of_items:elytra_remover

tag @s remove no_msg
tag @s remove no_remove_msg
tag @a remove toggle