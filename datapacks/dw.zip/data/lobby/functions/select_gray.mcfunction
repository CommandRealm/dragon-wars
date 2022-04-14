execute unless entity @s[team=gray] unless entity @a[team=gray] run tellraw @s [{"text":"You have joined the","color":"gray"},{"text":" \"Gray Team.\" ","color":"dark_gray"},{"text":"You currently don't have any teammates.","color":"gray"}]
execute unless entity @s[team=gray] if entity @a[team=gray] run tellraw @s [{"text":"You have joined the","color":"gray"},{"text":" \"Gray Team.\" ","color":"dark_gray"},{"text":"Your teammates are: ","color":"gray"},{"selector":"@a[team=gray]"}]
execute unless entity @s[team=gray] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=gray] run tellraw @s {"text":"You are already on this team!","color":"dark_gray"}
execute if entity @s[team=gray] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

team join gray