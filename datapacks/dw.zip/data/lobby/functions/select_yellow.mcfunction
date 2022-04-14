execute unless entity @s[team=yellow] unless entity @a[team=yellow] run tellraw @s [{"text":"You have joined the","color":"gray"},{"text":" \"Yellow Team.\" ","color":"yellow"},{"text":"You currently don't have any teammates.","color":"gray"}]
execute unless entity @s[team=yellow] if entity @a[team=yellow] run tellraw @s [{"text":"You have joined the","color":"gray"},{"text":" \"Yellow Team.\" ","color":"yellow"},{"text":"Your teammates are: ","color":"gray"},{"selector":"@a[team=yellow]"}]
execute unless entity @s[team=yellow] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=yellow] run tellraw @s {"text":"You are already on this team!","color":"yellow"}
execute if entity @s[team=yellow] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

team join yellow