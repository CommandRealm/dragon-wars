##Called to teleport us out of the parkour area.


##gamemode
gamemode adventure @s[gamemode=!adventure]


function lobby:parkour/leave

clear @s tipped_arrow

##sound
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1