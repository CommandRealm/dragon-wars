setblock -996 62 -16 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Vampiric Stake"] run tag @p add toggle
kill @e[type=armor_stand,name="Vampiric Stake"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand 1 56 27 {CustomName:'"Vampiric Stake"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -996 62 -16 jungle_wall_sign[facing=west]{Text1:'',Text2:'{"text":"Vampiric Stake","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:vampiric_stake"}}',Text3:'{"text":"[ON]","color":"green"}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -996 62 -16 jungle_wall_sign[facing=west]{Text1:'',Text2:'{"text":"Vampiric Stake","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function hall_of_items:vampiric_stake"}}',Text3:'{"text":"[OFF]","color":"dark_red"}',Text4:''}
execute if entity @a[tag=toggle] run summon item -995 63 -16 {Item:{id:"minecraft:wooden_sword",Count:1b},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_stake"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_stake]
tag @a remove toggle