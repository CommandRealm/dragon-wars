execute unless entity @s[team=blue] unless entity @a[team=blue] run tellraw @s [{"text":"You have joined the","color":"gray"},{"text":" \"Blue Team.\" ","color":"dark_blue"},{"text":"You currently don't have any teammates.","color":"gray"}]
execute unless entity @s[team=blue] if entity @a[team=blue] run tellraw @s [{"text":"You have joined the","color":"gray"},{"text":" \"Blue Team.\" ","color":"dark_blue"},{"text":" Your teammates are: ","color":"gray"},{"selector":"@a[team=blue]"}]
execute unless entity @s[team=blue] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=blue] run tellraw @s {"text":"You are already on this team!","color":"dark_blue"}
execute if entity @s[team=blue] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

team join blue