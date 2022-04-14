execute if score Red: check_kills matches 0.. run gamemode spectator @a[tag=playing,team=!red]
execute if score Blue: check_kills matches 0.. run gamemode spectator @a[tag=playing,team=!blue]
execute if score Yellow: check_kills matches 0.. run gamemode spectator @a[tag=playing,team=!yellow]
execute if score Green: check_kills matches 0.. run gamemode spectator @a[tag=playing,team=!green]
execute if score Gray: check_kills matches 0.. run gamemode spectator @a[tag=playing,team=!gray]


stopsound @a * minecraft:ambient.underwater.loop
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100000 0.75
scoreboard players set $time cooldown 100
function game:kill_criteria_end