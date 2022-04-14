# called when we touch the ground on the parkour.

function lobby:parkour/leave

tellraw @s [{"text":"╔╗","color":"dark_purple"},{"text":" You touched the the ground.","color":"red"}]

##sound
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1

clear @s tipped_arrow