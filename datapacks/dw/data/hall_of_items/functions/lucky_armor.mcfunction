setblock -1004 62 -26 air
execute unless entity @a[tag=no_toggle] unless entity @e[type=armor_stand,name="Lucky Armor"] run tag @p add toggle
kill @e[type=armor_stand,name="Lucky Armor"]
execute if entity @a[tag=toggle] run summon minecraft:armor_stand 0 56 26 {CustomName:'"Lucky Armor"',Tags:["item_spawn"],Invulnerable:1}
playsound minecraft:ui.button.click master @s[tag=!no_msg] ~ ~ ~ 100000 1
execute if entity @a[tag=toggle] run setblock -1004 62 -26 jungle_wall_sign[facing=east]{Text1:'[{"italic":false,"bold":true,"color":"yellow","text":"L"},{"text":"u","color":"gold"},{"text":"c","color":"yellow"},{"text":"k","color":"gold"},{"text":"y","color":"yellow"},{"text":" ","color":"gold"}]',Text2:'[{"text":"A","color":"yellow","bold":true},{"text":"r","color":"gold"},{"text":"m","color":"yellow"},{"text":"o","color":"gold"},{"text":"r","color":"yellow"}]',Text3:'{"text":"[ON]","color":"green","clickEvent":{"action":"run_command","value":"/function hall_of_items:lucky_armor"}}',Text4:''}
execute unless entity @a[tag=toggle] run setblock -1004 62 -26 jungle_wall_sign[facing=east]{Text1:'[{"italic":false,"bold":true,"color":"yellow","text":"L"},{"text":"u","color":"gold"},{"text":"c","color":"yellow"},{"text":"k","color":"gold"},{"text":"y","color":"yellow"},{"text":" ","color":"gold"}]',Text2:'[{"text":"A","color":"yellow","bold":true},{"text":"r","color":"gold"},{"text":"m","color":"yellow"},{"text":"o","color":"gold"},{"text":"r","color":"yellow"}]',Text3:'{"text":"[OFF]","color":"red","clickEvent":{"action":"run_command","value":"/function hall_of_items:lucky_armor"}}',Text4:''}
execute if entity @a[tag=toggle] run summon item -1005 63 -26 {Item:{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Colors:[I;16431616]}}},Age:-30000,Invulnerable:1b,PickupDelay:10124151,Tags:["item_model","model_lucky"]}
execute unless entity @a[tag=toggle] run kill @e[tag=model_lucky]
tag @a remove toggle

