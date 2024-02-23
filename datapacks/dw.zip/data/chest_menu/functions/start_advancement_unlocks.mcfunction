function chest_menu:clear
item replace entity @s enderchest.18 with barrier{KillWhenDropped:1,display:{Name:'{"text":"Back","color":"red","italic":false}'}}
item replace entity @s enderchest.10 with black_stained_glass_pane{KillWhenDropped:1,display:{Name:'{"text":"Exclusive Prefix","color":"light_purple","italic":false,"bold":true}',Lore:['[{"text":"Complete advancements to unlock.","italic":false,"color":"dark_purple"}]']}}
item replace entity @s[advancements={advancements:custom/unlock_prefix=true}] enderchest.10 with name_tag{KillWhenDropped:1,display:{Name:'{"text":"Exclusive Prefix","color":"light_purple","italic":false,"bold":true}',Lore:['[{"text":"Unlocked!","italic":false,"color":"gold"}]']}}
item replace entity @s[advancements={advancements:custom/unlock_prefix=true},tag=true_gamer] enderchest.10 with name_tag{Enchantments:[{id:"c",lvl:1}],KillWhenDropped:1,display:{Name:'{"text":"Exclusive Prefix","color":"light_purple","italic":false,"bold":true}',Lore:['[{"text":"Unlocked!","italic":false,"color":"gold"}]','[{"text":"Selected","italic":false,"color":"blue"}]']}}


item replace entity @s enderchest.12 with black_stained_glass_pane{KillWhenDropped:1,display:{Name:'{"text":"Exclusive Boost Particle","color":"yellow","italic":false,"bold":true}',Lore:['[{"text":"Complete advancements to unlock.","italic":false,"color":"gold"}]']}}
item replace entity @s[advancements={advancements:custom/unlock_boost_particle=true}] enderchest.12 with netherite_ingot{KillWhenDropped:1,display:{Name:'{"text":"Exclusive Boost Particle","color":"light_purple","italic":false,"bold":true}',Lore:['[{"text":"Unlocked!","italic":false,"color":"gold"}]']}}
item replace entity @s[advancements={advancements:custom/unlock_boost_particle=true},scores={particle=9}] enderchest.12 with netherite_ingot{Enchantments:[{id:"c",lvl:1}],KillWhenDropped:1,display:{Name:'{"text":"Exclusive Boost Particle","color":"light_purple","italic":false,"bold":true}',Lore:['[{"text":"Unlocked!","italic":false,"color":"gold"}]','[{"text":"Selected","italic":false,"color":"blue"}]']}}

item replace entity @s enderchest.14 with black_stained_glass_pane{KillWhenDropped:1,display:{Name:'{"text":"Exclusive Sword Name","color":"gray","italic":false,"bold":true}',Lore:['[{"text":"Complete advancements to unlock.","italic":false,"color":"dark_gray"}]']}}
item replace entity @s[advancements={advancements:custom/unlock_sword_name=true}] enderchest.14 with iron_sword{clickable:1,HideFlags:63,KillWhenDropped:1,display:{Name:'{"text":"Exclusive Sword Name","color":"light_purple","italic":false,"bold":true}',Lore:['[{"text":"Unlocked!","italic":false,"color":"gold"}]']}}
item replace entity @s[advancements={advancements:custom/unlock_sword_name=true},scores={sword=18}] enderchest.14 with iron_sword{clickable:1,HideFlags:63,Enchantments:[{id:"c",lvl:1}],KillWhenDropped:1,display:{Name:'{"text":"Exclusive Sword Name","color":"light_purple","italic":false,"bold":true}',Lore:['[{"text":"Unlocked!","italic":false,"color":"gold"}]','[{"text":"Selected","italic":false,"color":"blue"}]']}}

item replace entity @s enderchest.16 with black_stained_glass_pane{KillWhenDropped:1,display:{Name:'{"text":"Exclusive Celebration","color":"aqua","italic":false,"bold":true}',Lore:['[{"text":"Complete advancements to unlock.","italic":false,"color":"dark_aqua"}]']}}
item replace entity @s[advancements={advancements:custom/unlock_celebration=true}] enderchest.16 with dragon_egg{clickable:1,HideFlags:63,KillWhenDropped:1,display:{Name:'{"text":"Exclusive Celebration","color":"light_purple","italic":false,"bold":true}',Lore:['[{"text":"Unlocked!","italic":false,"color":"gold"}]']}}
item replace entity @s[advancements={advancements:custom/unlock_celebration=true},scores={celeb_number=18}] enderchest.16 with dragon_egg{clickable:1,HideFlags:63,Enchantments:[{id:"c",lvl:1}],KillWhenDropped:1,display:{Name:'{"text":"Exclusive Celebration","color":"light_purple","italic":false,"bold":true}',Lore:['[{"text":"Unlocked!","italic":false,"color":"gold"}]','[{"text":"Selected","italic":false,"color":"blue"}]']}}


scoreboard players set @s menu 8
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