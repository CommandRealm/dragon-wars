execute unless entity @s[team=yellow] unless entity @a[team=yellow] run tellraw @s {"text":"You have joined the \"Yellow Team.\" You currently don't have any teammates.","color":"yellow"}
execute unless entity @s[team=yellow] if entity @a[team=yellow] run tellraw @s [{"text":"You have joined the \"Yellow Team.\" Your teammates are: ","color":"yellow"},{"selector":"@a[team=yellow]"}]
execute unless entity @s[team=yellow] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=yellow] run tellraw @s {"text":"You are already on this team!","color":"yellow"}
execute if entity @s[team=yellow] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

team join yellow