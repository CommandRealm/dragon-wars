execute unless entity @s[team=green] unless entity @a[team=green] run tellraw @s {"text":"You have joined the \"Green Team.\" You currently don't have any teammates.","color":"green"}
execute unless entity @s[team=green] if entity @a[team=green] run tellraw @s [{"text":"You have joined the \"Green Team.\" Your teammates are: ","color":"green"},{"selector":"@a[team=green]"}]
execute unless entity @s[team=green] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=green] run tellraw @s {"text":"You are already on this team!","color":"green"}
execute if entity @s[team=green] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

team join green