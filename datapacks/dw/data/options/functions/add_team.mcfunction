setblock -2 68 48 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number team 1
execute if score $number team matches 6.. run scoreboard players set $number team 1
execute if score $number team matches ..0 run scoreboard players set $number team 5


execute if score $number team matches 1 run setblock -2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":"","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Solos.","color":"dark_purple","bold":true}',Text3:'{"text":" ","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_team"}}'}
execute if score $number team matches 2 run setblock -2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":"Number of","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"teams:","color":"dark_purple","bold":true}',Text3:'{"text":"2 teams.","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_team"}}'}
execute if score $number team matches 3 run setblock -2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":"Number of","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"teams:","color":"dark_purple","bold":true}',Text3:'{"text":"3 teams.","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_team"}}'}
execute if score $number team matches 4 run setblock -2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":"Number of","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"teams:","color":"dark_purple","bold":true}',Text3:'{"text":"4 teams.","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_team"}}'}
execute if score $number team matches 5 run setblock -2 68 48 jungle_wall_sign[facing=north]{Text1:'{"text":"Number of","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"teams:","color":"dark_purple","bold":true}',Text3:'{"text":"5 teams.","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:click_team"}}'}


particle minecraft:cloud -2 69.5 49 0 0 0 0.05 10



kill @e[tag=display_team]
execute if score $number team matches 1 run summon armor_stand -2 68.675 49 {Pose:{RightArm:[-15.0f,135.0f,0.0f]},Tags:["display_team","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:purple_concrete",Count:1b},{}]}
execute if score $number team matches 2 run summon armor_stand -2 68.675 49 {Pose:{RightArm:[-15.0f,135.0f,0.0f]},Tags:["display_team","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:red_concrete",Count:1b},{}]}
execute if score $number team matches 2 run summon armor_stand -2 68.8625 49 {Pose:{RightArm:[-15.0f,135.0f,0.0f]},Tags:["display_team","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:blue_concrete",Count:1b},{}]}
execute if score $number team matches 3 run summon armor_stand -2 68.675 49 {Pose:{RightArm:[-15.0f,135.0f,0.0f]},Tags:["display_team","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:red_concrete",Count:1b},{}]}
execute if score $number team matches 3 run summon armor_stand -2 68.8625 49 {Pose:{RightArm:[-15.0f,135.0f,0.0f]},Tags:["display_team","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:blue_concrete",Count:1b},{}]}
execute if score $number team matches 3 run summon armor_stand -2 69.05 49 {Pose:{RightArm:[-15.0f,135.0f,0.0f]},Tags:["display_team","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:yellow_concrete",Count:1b},{}]}
execute if score $number team matches 4 run summon armor_stand -2 68.675 49 {Pose:{RightArm:[-15.0f,135.0f,0.0f]},Tags:["display_team","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:red_concrete",Count:1b},{}]}
execute if score $number team matches 4 run summon armor_stand -2 68.8625 49 {Pose:{RightArm:[-15.0f,135.0f,0.0f]},Tags:["display_team","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:blue_concrete",Count:1b},{}]}
execute if score $number team matches 4 run summon armor_stand -2 69.05 49 {Pose:{RightArm:[-15.0f,135.0f,0.0f]},Tags:["display_team","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:yellow_concrete",Count:1b},{}]}
execute if score $number team matches 4 run summon armor_stand -2 69.2375 49 {Pose:{RightArm:[-15.0f,135.0f,0.0f]},Tags:["display_team","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:lime_concrete",Count:1b},{}]}
execute if score $number team matches 5 run summon armor_stand -2 68.675 49 {Pose:{RightArm:[-15.0f,135.0f,0.0f]},Tags:["display_team","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:red_concrete",Count:1b},{}]}
execute if score $number team matches 5 run summon armor_stand -2 68.8625 49 {Pose:{RightArm:[-15.0f,135.0f,0.0f]},Tags:["display_team","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:blue_concrete",Count:1b},{}]}
execute if score $number team matches 5 run summon armor_stand -2 69.05 49 {Pose:{RightArm:[-15.0f,135.0f,0.0f]},Tags:["display_team","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:yellow_concrete",Count:1b},{}]}
execute if score $number team matches 5 run summon armor_stand -2 69.2375 49 {Pose:{RightArm:[-15.0f,135.0f,0.0f]},Tags:["display_team","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:lime_concrete",Count:1b},{}]}
execute if score $number team matches 5 run summon armor_stand -2 69.425 49 {Pose:{RightArm:[-15.0f,135.0f,0.0f]},Tags:["display_team","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:gray_concrete",Count:1b},{}]}

clear @a written_book{TeamBook:1}
execute if score $number team matches 2.. as @a[tag=!building] at @s run function lobby:get_book
execute if score $number team matches 2.. as @a[tag=!building] at @s run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 1



execute if score $number team matches 4 as @a[team=purple] run function general:team
execute if score $number team matches 3 as @a[team=green] run function general:team
execute if score $number team matches 2 as @a[team=yellow] run function general:team
execute if score $number team matches 1 as @a[tag=!playing] run function general:team




