execute unless entity @s[team=green] unless entity @a[team=green] run tellraw @s [{"text":"You have joined the","color":"gray"},{"text":" \"Green Team.\" ","color":"green"},{"text":"You currently don't have any teammates.","color":"gray"}]
execute unless entity @s[team=green] if entity @a[team=green] run tellraw @s [{"text":"You have joined the","color":"gray"},{"text":" \"Green Team.\" ","color":"green"},{"text":"Your teammates are: ","color":"gray"},{"selector":"@a[team=green]"}]
execute unless entity @s[team=green] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=green] run tellraw @s {"text":"You are already on this team!","color":"green"}
execute if entity @s[team=green] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

team join green