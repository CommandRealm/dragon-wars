execute unless entity @s[team=red] unless entity @a[team=red] run tellraw @s {"text":"You have joined the \"Red Team.\" You currently don't have any teammates.","color":"dark_red"}
execute unless entity @s[team=red] if entity @a[team=red] run tellraw @s [{"text":"You have joined the \"Red Team.\" Your teammates are: ","color":"dark_red"},{"selector":"@a[team=red]"}]
execute unless entity @s[team=red] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=red] run tellraw @s {"text":"You are already on this team!","color":"dark_red"}
execute if entity @s[team=red] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

team join red