execute unless entity @s[team=blue] unless entity @a[team=blue] run tellraw @s {"text":"You have joined the \"Blue Team.\" You currently don't have any teammates.","color":"dark_blue"}
execute unless entity @s[team=blue] if entity @a[team=blue] run tellraw @s [{"text":"You have joined the \"Blue Team.\" Your teammates are: ","color":"dark_blue"},{"selector":"@a[team=blue]"}]
execute unless entity @s[team=blue] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=blue] run tellraw @s {"text":"You are already on this team!","color":"dark_blue"}
execute if entity @s[team=blue] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

team join blue