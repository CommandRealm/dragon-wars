

##Starting the ender chest parkour leaderboard

##Clear Function
function chest_menu:clear

##Setting screen
scoreboard players set @s menu 9
scoreboard players set @s click_1 0
scoreboard players set @s click_2 0
scoreboard players set @s click_3 0
scoreboard players set @s click_4 0
scoreboard players set @s click_5 0
scoreboard players set @s click_6 0
scoreboard players set @s click_7 0
scoreboard players set @s click_9 0
scoreboard players set @s click_10 0
scoreboard players set @s click_11 0
scoreboard players set @s click_12 0
scoreboard players set @s click_13 0
scoreboard players set @s click_14 0
scoreboard players set @s click_15 0
scoreboard players set @s click_16 0
scoreboard players set @s click_17 0
scoreboard players set @s click_18 0
scoreboard players set @s click_19 0
scoreboard players set @s click_20 0
scoreboard players set @s click_21 0


##Placements




##
setblock 0 48 0 air
setblock 0 48 0 shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b},{Slot:1b,id:"minecraft:structure_void",Count:1b},{Slot:2b,id:"minecraft:structure_void",Count:1b},{Slot:3b,id:"minecraft:structure_void",Count:1b},{Slot:4b,id:"minecraft:structure_void",Count:1b},{Slot:5b,id:"minecraft:structure_void",Count:1b},{Slot:6b,id:"minecraft:structure_void",Count:1b},{Slot:7b,id:"minecraft:structure_void",Count:1b},{Slot:8b,id:"minecraft:structure_void",Count:1b},{Slot:9b,id:"minecraft:structure_void",Count:1b},{Slot:10b,id:"minecraft:structure_void",Count:1b},{Slot:11b,id:"minecraft:structure_void",Count:1b},{Slot:12b,id:"minecraft:structure_void",Count:1b},{Slot:13b,id:"minecraft:structure_void",Count:1b},{Slot:14b,id:"minecraft:structure_void",Count:1b},{Slot:15b,id:"minecraft:structure_void",Count:1b},{Slot:16b,id:"minecraft:structure_void",Count:1b},{Slot:17b,id:"minecraft:structure_void",Count:1b},{Slot:18b,id:"minecraft:structure_void",Count:1b},{Slot:19b,id:"minecraft:structure_void",Count:1b},{Slot:20b,id:"minecraft:structure_void",Count:1b},{Slot:21b,id:"minecraft:structure_void",Count:1b},{Slot:22b,id:"minecraft:structure_void",Count:1b},{Slot:23b,id:"minecraft:structure_void",Count:1b},{Slot:24b,id:"minecraft:structure_void",Count:1b},{Slot:25b,id:"minecraft:structure_void",Count:1b},{Slot:26b,id:"minecraft:structure_void",Count:1b}]}
execute if data entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 48 0 Items[{Slot:3b}].id set from entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id
execute if data entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 48 0 Items[{Slot:3b}].tag set from entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].tag
execute if data entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 48 0 Items[{Slot:3b}].tag.display.Name set from entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=1},limit=1] CustomName
execute if data entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 48 0 Items[{Slot:3b}].tag.clickable set value 1
execute if data entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 48 0 Items[{Slot:3b}].tag.invalid_click set value 1

execute if data entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=2},limit=1] ArmorItems[3].id run data modify block 0 48 0 Items[{Slot:12b}].id set from entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=2},limit=1] ArmorItems[3].id
execute if data entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=2},limit=1] ArmorItems[3].id run data modify block 0 48 0 Items[{Slot:12b}].tag set from entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=2},limit=1] ArmorItems[3].tag
execute if data entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=2},limit=1] ArmorItems[3].id run data modify block 0 48 0 Items[{Slot:12b}].tag.display.Name set from entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=2},limit=1] CustomName
execute if data entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 48 0 Items[{Slot:12b}].tag.clickable set value 1
execute if data entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 48 0 Items[{Slot:12b}].tag.invalid_click set value 1

execute if data entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=3},limit=1] ArmorItems[3].id run data modify block 0 48 0 Items[{Slot:21b}].id set from entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=3},limit=1] ArmorItems[3].id
execute if data entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=3},limit=1] ArmorItems[3].id run data modify block 0 48 0 Items[{Slot:21b}].tag set from entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=3},limit=1] ArmorItems[3].tag
execute if data entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=3},limit=1] ArmorItems[3].id run data modify block 0 48 0 Items[{Slot:21b}].tag.display.Name set from entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=3},limit=1] CustomName
execute if data entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 48 0 Items[{Slot:21b}].tag.clickable set value 1
execute if data entity @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=1},limit=1] ArmorItems[3].id run data modify block 0 48 0 Items[{Slot:21b}].tag.invalid_click set value 1

##If there is no placements.
execute if data block 0 48 0 Items[{Slot:3b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.3 with iron_bars{invalid_click:1,clickable:1,HideFlags:63,display:{Name:'[{"text":"1st","color":"gold","bold":true,"italic":false},{"text":" - ","color":"gold","bold":false},{"text":"Unclaimed","bold":false,"italic":false,"color":"red"}]'}}
execute if data block 0 48 0 Items[{Slot:12b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.12 with iron_bars{invalid_click:1,clickable:1,HideFlags:63,display:{Name:'[{"text":"2nd","color":"#a5afb8","bold":true,"italic":false},{"text":" - ","color":"gold","bold":false},{"text":"Unclaimed","bold":false,"italic":false,"color":"red"}]'}}
execute if data block 0 48 0 Items[{Slot:21b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.21 with iron_bars{invalid_click:1,clickable:1,HideFlags:63,display:{Name:'[{"text":"3rd","color":"#cd7e32","bold":true,"italic":false},{"text":" - ","color":"gold","bold":false},{"text":"Unclaimed","bold":false,"italic":false,"color":"red"}]'}}
##Middle row
item replace block 0 48 0 container.13 with netherite_block{invalid_click:1,clickable:1,HideFlags:63,display:{Name:'[{"text":"Elytra","bold":true,"italic":false,"color":"gray"},{"text":" Course","color":"dark_gray"}]'}}


##Getting our time.
tag @s remove elytra_course
clear @s tipped_arrow
scoreboard players operation @s parkour_time = @s parkour_score
function lobby:parkour/calculate_time
##Putting it on a sign, so it's easier to read off later.
execute if score $minute calculate matches 0 run data modify block 0 50 0 Text1 set value '[{"score":{"objective":"calculate","name":"$second"},"color":"yellow"},{"text":".","color":"gold"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow"}]'
execute if score $minute calculate matches 1.. if score $second calculate matches 10.. run data modify block 0 50 0 Text1 set value '[{"score":{"objective":"calculate","name":"$minute"},"color":"yellow"},{"text":":","color":"gold"},{"score":{"objective":"calculate","name":"$second"},"color":"yellow"},{"text":".","color":"gold"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow"}]'
execute if score $minute calculate matches 1.. if score $second calculate matches ..9 run data modify block 0 50 0 Text1 set value '[{"score":{"objective":"calculate","name":"$minute"},"color":"yellow"},{"text":":","color":"gold"},{"text":"0","color":"yellow"},{"score":{"objective":"calculate","name":"$second"},"color":"yellow"},{"text":".","color":"gold"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow"}]'

summon area_effect_cloud 0 0 0 {Tags:["die_soon"]}

data modify entity @e[type=area_effect_cloud,tag=die_soon,limit=1] CustomName set from block 0 50 0 Text1

loot replace block 0 48 0 container.14 loot leaderboards:parkour_highscore

execute if score @s parkour_score matches 1000000000 run item replace block 0 48 0 container.14 with iron_bars{Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],invalid_click:1,clickable:1,HideFlags:63,display:{Name:'[{"text":"- ","color":"gray","italic":false},{"text":"You don\'t have a parkour score yet!","color":"red"}]'}}

kill @e[type=area_effect_cloud,tag=die_soon]

item replace block 0 48 0 container.18 with barrier{KillWhenDropped:1,display:{Name:'{"text":"Back","color":"red","italic":false}'}}

##Clearing structure voids
execute if data block 0 48 0 Items[{Slot:0b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.0 with air
execute if data block 0 48 0 Items[{Slot:1b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.1 with air
execute if data block 0 48 0 Items[{Slot:2b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.2 with air
execute if data block 0 48 0 Items[{Slot:3b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.3 with air
execute if data block 0 48 0 Items[{Slot:4b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.4 with air
execute if data block 0 48 0 Items[{Slot:5b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.5 with air
execute if data block 0 48 0 Items[{Slot:6b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.6 with air
execute if data block 0 48 0 Items[{Slot:7b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.7 with air
execute if data block 0 48 0 Items[{Slot:8b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.8 with air

execute if data block 0 48 0 Items[{Slot:9b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.9 with air
execute if data block 0 48 0 Items[{Slot:10b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.10 with air
execute if data block 0 48 0 Items[{Slot:11b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.11 with air
execute if data block 0 48 0 Items[{Slot:12b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.12 with air
execute if data block 0 48 0 Items[{Slot:13b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.13 with air
execute if data block 0 48 0 Items[{Slot:14b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.14 with air
execute if data block 0 48 0 Items[{Slot:15b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.15 with air
execute if data block 0 48 0 Items[{Slot:16b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.16 with air
execute if data block 0 48 0 Items[{Slot:17b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.17 with air

execute if data block 0 48 0 Items[{Slot:18b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.18 with air
execute if data block 0 48 0 Items[{Slot:19b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.19 with air
execute if data block 0 48 0 Items[{Slot:20b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.20 with air
execute if data block 0 48 0 Items[{Slot:21b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.21 with air
execute if data block 0 48 0 Items[{Slot:22b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.22 with air
execute if data block 0 48 0 Items[{Slot:23b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.23 with air
execute if data block 0 48 0 Items[{Slot:24b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.24 with air
execute if data block 0 48 0 Items[{Slot:25b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.25 with air
execute if data block 0 48 0 Items[{Slot:26b,id:"minecraft:structure_void"}] run item replace block 0 48 0 container.26 with air


loot replace entity @s enderchest.0 mine 0 48 0 stone{drop_contents:true}

