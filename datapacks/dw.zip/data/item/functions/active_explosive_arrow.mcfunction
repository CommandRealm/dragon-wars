# called when there is an explosive arrow
execute at @e[type=arrow,tag=explosive_arrow] run particle smoke ~ ~ ~


execute at @e[type=arrow,tag=explosive_arrow,nbt={inGround:1b}] run function item:delete_explosive_arrow