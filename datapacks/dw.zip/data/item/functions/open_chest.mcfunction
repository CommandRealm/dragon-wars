scoreboard players set @s open_chest 0
playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.75
playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 0.75


tag @e[tag=item_spawn,sort=random,limit=1] add selected_item
execute if entity @s[x=-1000,y=66,z=0,distance=..400] run tag @e[type=armor_stand] remove selected_item
execute if entity @s[x=-1000,y=66,z=0,distance=..400] run give @s bow{Unbreakable:1b,HideFlags:63,echest:1,Enchantments:[{id:"minecraft:power",lvl:1}],display:{Lore:['{"text":"A bow enchanted with power I.","italic":false,"color":"yellow"}'],Name:'{"italic":false,"bold":false,"color":"yellow","text":"Power Bow"}'}}


execute if entity @e[tag=lobby_chest,type=area_effect_cloud,distance=..15] if entity @e[tag=item_spawn,name="Ice Mine",tag=selected_item] run tag @e[tag=item_spawn,name="Iron Sword"] add selected_item
execute if entity @e[tag=lobby_chest,type=area_effect_cloud,distance=..15] run tag @e[tag=item_spawn,name="Ice Mine",tag=selected_item] remove selected_item
execute if entity @e[tag=lobby_chest,type=area_effect_cloud,distance=..15] run advancement grant @s only minecraft:custom/open_chest
execute if entity @e[tag=lobby_chest,type=area_effect_cloud,distance=..15] if entity @e[tag=item_spawn,name="Monster Horde",tag=selected_item] run tag @e[tag=item_spawn,name="Iron Sword"] add selected_item
execute if entity @e[tag=lobby_chest,type=area_effect_cloud,distance=..15] run tag @e[tag=item_spawn,name="Monster Horde",tag=selected_item] remove selected_item


execute if entity @e[tag=item_spawn,name="Iron Sword",tag=selected_item] run function cosmetic:iron_sword

execute if entity @e[tag=item_spawn,name="Fire Sword",tag=selected_item] run give @s golden_sword{HideFlags:63,echest:1,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0, UUID:[I; 100, 100, 100, 100],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1024,Operation:0, UUID:[I; 101, 101, 101, 101],Slot:"mainhand"}],display:{Lore:['{"text":"A golden sword enchanted with fire aspect I.","italic":false,"color":"red"}','[{"text":"5","color":"white","italic":false},{"text":" Attack","color":"gray"},{"text":" Damage","color":"dark_red"}]'],Name:'{"text":"Fire Sword","color":"red","bold":false,"italic":false}'},Enchantments:[{id:"minecraft:fire_aspect",lvl:1}]}

execute if entity @e[tag=item_spawn,name="Power Bow",tag=selected_item] run give @s bow{Unbreakable:1b,HideFlags:63,echest:1,Enchantments:[{id:"minecraft:power",lvl:1}],display:{Lore:['{"text":"A bow enchanted with power I.","italic":false,"color":"yellow"}'],Name:'{"italic":false,"bold":false,"color":"yellow","text":"Power Bow"}'}}

execute if entity @e[tag=item_spawn,name="Punch Bow",tag=selected_item] run give @s bow{HideFlags:63,echest:1,Unbreakable:1b,Enchantments:[{id:"minecraft:punch",lvl:2}],display:{Lore:['{"text":"A bow enchanted with punch II.","italic":false,"color":"gold"}'],Name:'{"italic":false,"bold":false,"color":"gold","text":"Punch Bow"}'}}

execute if entity @e[tag=item_spawn,name="Flame Bow",tag=selected_item] run give @s bow{HideFlags:63,echest:1,Unbreakable:1b,Enchantments:[{id:"minecraft:flame",lvl:1}],display:{Lore:['{"text":"A bow with flame I.","italic":false,"color":"red"}'],Name:'{"italic":false,"bold":false,"color":"red","text":"Fire Bow"}'}}

execute if entity @e[tag=item_spawn,name="Shield",tag=selected_item] run give @s shield{HideFlags:63,echest:1,Unbreakable:1b,display:{Lore:['{"text":"A normal shield.","italic":false,"color":"yellow"}'],Name:'[{"text":"Basic ","color":"gray","bold":false,"italic":false},{"italic":false,"bold":false,"color":"yellow","text":"Shield"}]'}}

execute if entity @e[tag=item_spawn,name="Health Potion",tag=selected_item] run give @s splash_potion{HideFlags:63,echest:1,Potion:"minecraft:strong_healing",Unbreakable:1b,display:{Lore:['{"text":"Throwable health II potion.","italic":false,"color":"light_purple"}'],Name:'{"italic":false,"bold":false,"color":"light_purple","text":"Healing Potion"}'}}

execute if entity @e[tag=item_spawn,name="Diamond Sword",tag=selected_item] run function cosmetic:diamond_sword

execute if entity @e[tag=item_spawn,name="Crossbow",tag=selected_item] run give @s crossbow{HideFlags:63,echest:1,Unbreakable:1b,Enchantments:[{id:"minecraft:piercing",lvl:2}],display:{Lore:['{"text":"A crossbow enchanted with piercing II.","italic":false,"color":"red"}'],Name:'{"italic":false,"bold":false,"color":"red","text":"Piercing Crossbow"}'}}

execute if entity @e[tag=item_spawn,name="Trident",tag=selected_item] run give @s trident{HideFlags:63,echest:1,Unbreakable:1b,Enchantments:[{id:"minecraft:loyalty",lvl:5}],display:{Lore:['{"text":"A trident enchanted with loyalty V.","italic":false,"color":"dark_aqua"}','[{"text":"6","color":"white","italic":false},{"text":" Attack","color":"gray"},{"text":" Damage","color":"dark_red"}]'],Name:'{"italic":false,"bold":false,"color":"dark_aqua","text":"Trident"}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0, UUID:[I; 100, 100, 100, 100],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1024,Operation:0, UUID:[I; 101, 101, 101, 101],Slot:"mainhand"}]}

execute if entity @e[tag=item_spawn,name="Multishot",tag=selected_item] run give @s crossbow{HideFlags:63,echest:1,Unbreakable:1b,Enchantments:[{id:"minecraft:multishot",lvl:1}],display:{Lore:['{"text":"A crossbow enchanted with multishot I.","italic":false,"color":"dark_red"}'],Name:'{"italic":false,"bold":false,"color":"dark_red","text":"Multishot Crossbow"}'}}

execute if entity @e[tag=item_spawn,name="Iron Armor",tag=selected_item] run give @s firework_star{ArmorType:0,Explosion:{Colors:[I;16777215]},HideFlags:63,echest:1,Dropable:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to equip iron armor.","italic":false,"color":"gray"}'],Name:'[{"italic":false,"bold":false,"color":"gray","text":"Iron Armor"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}}

execute if entity @e[tag=item_spawn,name="Chain Armor",tag=selected_item] run give @s firework_star{ArmorType:1,Explosion:{Colors:[I;4934475]},HideFlags:63,echest:1,Dropable:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to equip chainmail armor ","italic":false,"color":"dark_gray"}','{"text":"enchanted with projectile protection IV.","italic":false,"color":"dark_gray"}'],Name:'[{"italic":false,"bold":false,"color":"dark_gray","text":"Archery Protection Armor"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}}

execute if entity @e[tag=item_spawn,name="Ninja Outfit",tag=selected_item] run give @s firework_star{ArmorType:2,Explosion:{Colors:[I;5479591]},HideFlags:63,echest:1,Dropable:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to equip leather armor that grants a speed buff.","italic":false,"color":"dark_aqua"}'],Name:'[{"italic":false,"bold":false,"color":"dark_aqua","text":"Ninja Armor"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}}

execute if entity @e[tag=item_spawn,name="Lucky Armor",tag=selected_item] run give @s firework_star{ArmorType:3,Explosion:{Colors:[I;16431616]},HideFlags:63,echest:1,Dropable:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to equip gold armor that gives extra items.","italic":false,"color":"yellow"}'],Name:'[{"italic":false,"bold":false,"color":"yellow","text":"L"},{"text":"u","color":"gold"},{"text":"c","color":"yellow"},{"text":"k","color":"gold"},{"text":"y","color":"yellow"},{"text":" ","color":"gold"},{"text":"A","color":"yellow"},{"text":"r","color":"gold"},{"text":"m","color":"yellow"},{"text":"o","color":"gold"},{"text":"r","color":"yellow"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}}

execute if entity @e[tag=item_spawn,name="Spartan Armor",tag=selected_item] run give @s firework_star{ArmorType:4,Explosion:{Colors:[I;422918]},HideFlags:63,echest:1,Dropable:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to equip leather armor enchanted with thorns I.","italic":false,"color":"dark_green"}'],Name:'[{"italic":false,"bold":false,"color":"dark_green","text":"Cactus Armor"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}}

execute if entity @e[tag=item_spawn,name="Gladiator Armor",tag=selected_item] run give @s firework_star{ArmorType:5,Explosion:{Colors:[I;15138816]},HideFlags:63,echest:1,Dropable:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to equip leather armor that grants an attack buff.","italic":false,"color":"dark_red"}'],Name:'[{"italic":false,"bold":false,"color":"dark_red","text":"Gladiator Armor"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}}

execute if entity @e[tag=item_spawn,name="KB Stick",tag=selected_item] run give @s stick{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0, UUID:[I; 100, 100, 100, 100],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1024,Operation:0, UUID:[I; 101, 101, 101, 101],Slot:"mainhand"}],HideFlags:63,echest:1,Unbreakable:1b,display:{Lore:['{"text":"A stick enchanted with knockback II.","italic":false,"color":"yellow"}','[{"text":"2","color":"white","italic":false},{"text":" Attack","color":"gray"},{"text":" Damage","color":"dark_red"}]'],Name:'{"italic":false,"bold":false,"color":"yellow","text":"Knockback Stick"}'},Enchantments:[{id:"minecraft:knockback",lvl:2}]}

execute if entity @e[tag=item_spawn,name="Rage Axe",tag=selected_item] run give @s iron_axe{HideFlags:63,echest:1,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0, UUID:[I; 100, 100, 100, 100],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1024,Operation:0, UUID:[I; 101, 101, 101, 101],Slot:"mainhand"}],HideFlags:63,echest:1,display:{Lore:['{"text":"An axe that gives strength 1 after getting a kill.","italic":false,"color":"dark_red"}','[{"text":"5","color":"white","italic":false},{"text":" Attack","color":"gray"},{"text":" Damage","color":"dark_red"}]'],Name:'{"text":"Rage Axe","color":"dark_red","bold":false,"italic":false}'}}

execute if entity @e[tag=item_spawn,name="Lingering Poison",tag=selected_item] run give @s lingering_potion{Potion:"minecraft:long_poison",HideFlags:63,echest:1,Unbreakable:1b,display:{Lore:['{"text":"Throwable lingering potion of poison I.","italic":false,"color":"green"}'],Name:'{"italic":false,"bold":false,"color":"green","text":"Lingering Potion of Poison"}'}}

execute if entity @e[tag=item_spawn,name="TNT",tag=selected_item] run give @s tnt{HideFlags:63,echest:1,Dropable:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to throw TNT.","italic":false,"color":"red"}'],Name:'[{"italic":false,"bold":false,"color":"red","text":"TNT"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}}

execute if entity @e[tag=item_spawn,name="Brewing Stand",tag=selected_item] run give @s brewing_stand{HideFlags:63,echest:1,Dropable:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to gain a random potion effect.","italic":false,"color":"dark_purple"}'],Name:'[{"italic":false,"bold":false,"color":"dark_purple","text":"Risky Brew"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}}

execute if entity @e[tag=item_spawn,name="TP Beam",tag=selected_item] run give @s ender_eye{HideFlags:63,echest:1,Dropable:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to shoot a laser that swaps places with other players.","italic":false,"color":"red"}'],Name:'[{"italic":false,"bold":false,"color":"red","text":"Swapper Beam"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}}

execute if entity @e[tag=item_spawn,name="Tornado Jump",tag=selected_item] run give @s feather{HideFlags:63,echest:1,Dropable:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to gain levitation for 1 second.","italic":false,"color":"white"}'],Name:'[{"italic":false,"bold":false,"color":"white","text":"Tornado Jump"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}}

execute if entity @e[tag=item_spawn,name="Slow Falling",tag=selected_item] run give @s egg{HideFlags:63,echest:1,Unbreakable:1b,display:{Lore:['{"text":"Throw to give nearby targets slow falling.","italic":false,"color":"yellow"}'],Name:'{"italic":false,"bold":false,"color":"yellow","text":"Egg of Slow Falling"}'}}

execute if entity @e[tag=item_spawn,name="Monster Horde",tag=selected_item] run give @s rotten_flesh{HideFlags:63,echest:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to spawn a horde of monsters.","italic":false,"color":"dark_red"}'],Name:'[{"italic":false,"bold":false,"color":"dark_red","text":"Monster Horde"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}}

execute if entity @e[tag=item_spawn,name="Ice Mine",tag=selected_item] run give @s ice{HideFlags:63,echest:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to create an ice trap.","italic":false,"color":"aqua"}'],Name:'[{"italic":false,"bold":false,"color":"aqua","text":"Ice Mine"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}} 3

execute if entity @e[tag=item_spawn,name="Time Bomb",tag=selected_item] run give @s chiseled_polished_blackstone{HideFlags:63,echest:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to set a timed bomb.","italic":false,"color":"dark_gray"}'],Name:'[{"italic":false,"bold":false,"color":"dark_gray","text":"Time Bomb"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}}

execute if entity @e[tag=item_spawn,name="Levitation Blast",tag=selected_item] run give @s end_crystal{HideFlags:63,echest:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to gain levitation before shooting a laser.","italic":false,"color":"#f9baff"}'],Name:'[{"italic":false,"bold":false,"color":"#f9baff","text":"Levitation Blast"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}}


execute if entity @e[tag=item_spawn,name="Vampiric Stake",tag=selected_item] run give @s wooden_sword{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0, UUID:[I; 100, 100, 100, 100]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1024,Operation:0, UUID:[I; 101, 101, 101, 101]}],HideFlags:63,echest:1,display:{Lore:['{"text":"A buffed wooden sword that heals you after getting a kill.","italic":false,"color":"red"}','[{"text":"5","color":"white","italic":false},{"text":" Attack","color":"gray"},{"text":" Damage","color":"dark_red"}]'],Name:'{"text":"Vampiric Stake","color":"red","italic":false,"bold":false}'}}


# new 1.17 items
execute if entity @e[tag=item_spawn,name="Death Scythe",tag=selected_item] run give @s map{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1024,Operation:0, UUID:[I; 101, 101, 101, 101]}],HideFlags:63,echest:1,display:{Lore:['{"text":"Drop to receive a powerful melee weapon that lowers the user\'s max health.","italic":false,"color":"gray"}','[{"text":"9","color":"white","italic":false},{"text":" Attack","color":"gray"},{"text":" Damage","color":"dark_red"}]'],Name:'[{"text":"Death\'s ","color":"dark_gray","italic":false,"bold":false},{"text":"Scroll","color":"gray"},{"text":" <","color":"dark_gray","bold":false,"italic":false},{"text":"Click","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":false,"italic":false}]'}}

execute if entity @e[tag=item_spawn,name="Armor Breaker",tag=selected_item] run give @s iron_pickaxe{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0, UUID:[I; 100, 100, 100, 100]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1024,Operation:0, UUID:[I; 101, 101, 101, 101]}],HideFlags:63,echest:1,display:{Lore:['{"text":"A weapon that breaks the armor of any player it hits.","italic":false,"color":"gold"}'],Name:'[{"text":"Armor ","color":"gray","italic":false,"bold":false},{"text":"Breaker","color":"gold"}]'}}

execute if entity @e[tag=item_spawn,name="Leaping Armor",tag=selected_item] run give @s firework_star{ArmorType:6,Explosion:{Colors:[I;4977989]},HideFlags:63,echest:1,Dropable:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to equip leather armor that grants jump boost.","italic":false,"color":"gray"}'],Name:'[{"text":"Leaping ","color":"green","bold":false,"italic":false},{"italic":false,"bold":false,"color":"gray","text":"Armor"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}}

execute if entity @e[tag=item_spawn,name="Explosive Bow",tag=selected_item] run give @s bow{explosive_bow:1,HideFlags:63,echest:1,Unbreakable:1b,display:{Lore:['{"text":"A bow that explodes when it hits a player. Each shot uses up three arrows.","italic":false,"color":"gray"}'],Name:'[{"text":"Explosive ","color":"red","bold":false,"italic":false},{"italic":false,"bold":false,"color":"gray","text":"Bow"}]'},Enchantments:[{}]}

execute if entity @e[tag=item_spawn,name="Time Warp",tag=selected_item] run give @s clock{explosive_bow:1,HideFlags:63,echest:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to warp to your position three seconds ago.","italic":false,"color":"dark_purple"}'],Name:'[{"text":"Time ","color":"gold","bold":false,"italic":false},{"italic":false,"bold":false,"color":"dark_purple","text":"Warp"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}}

execute if entity @e[tag=item_spawn,name="Firework Remover",tag=selected_item] run give @s snowball{explosive_bow:1,HideFlags:63,echest:1,Unbreakable:1b,display:{Lore:['{"text":"Clears fireworks from players near the projectile.","italic":false,"color":"dark_red"}'],Name:'[{"text":"Firework ","color":"gray","bold":false,"italic":false},{"italic":false,"bold":false,"color":"dark_red","text":"Remover"}]'}}




# new comp update items
execute if entity @e[tag=item_spawn,name="Sniping Bow",tag=selected_item] run give @s bow{sniping_bow:1,HideFlags:63,echest:1,Unbreakable:1b,display:{Lore:['{"text":"A bow that deals more damage on farther shots.","italic":false,"color":"gray"}'],Name:'[{"text":"Sniping ","color":"dark_red","bold":false,"italic":false},{"italic":false,"bold":false,"color":"gray","text":"Bow"}]'},Enchantments:[{}]}
execute if entity @e[tag=item_spawn,name="Thief Beam",tag=selected_item] run give @s magma_cream{HideFlags:63,echest:1,Dropable:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to shoot a laser that steals the item a player is holding.","italic":false,"color":"gold"}'],Name:'[{"text":"Thief","color":"yellow","italic":false},{"italic":false,"bold":false,"color":"gold","text":" Beam"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}}
execute if entity @e[tag=item_spawn,name="Speed Potion",tag=selected_item] run give @s potion{HideFlags:63,echest:1,Unbreakable:1b,display:{Lore:['{"text":"A potion with a high level of speed.","italic":false,"color":"dark_aqua"}'],Name:'[{"text":"Hyperspeed","color":"aqua","italic":false},{"italic":false,"bold":false,"color":"dark_aqua","text":" Potion"}]'},custom_potion_effects:[{id:"minecraft:speed",amplifier:8,duration:300}],CustomPotionColor:8171462}

execute if entity @e[tag=item_spawn,name="Strength Shield",tag=selected_item] run give @s shield{strength_shield:1,HideFlags:63,echest:1,Unbreakable:1b,display:{Lore:['{"text":"A shield that gives a strength buff after a successful block attempt.","italic":false,"color":"gold"}'],Name:'[{"text":"Strength ","color":"dark_red","bold":false,"italic":false},{"italic":false,"bold":false,"color":"gold","text":"Shield"}]'},BlockEntityTag:{Base:15,Patterns:[{Color:7,Pattern:"mr"},{Color:8,Pattern:"flo"},{Color:14,Pattern:"mc"},{Color:15,Pattern:"cr"}]}}
execute if entity @e[tag=item_spawn,name="Firework Shield",tag=selected_item] run give @s shield{firework_shield:1,HideFlags:63,echest:1,Unbreakable:1b,display:{Lore:['{"text":"A shield that gives a firework after a successful block attempt.","italic":false,"color":"gold"}'],Name:'[{"text":"Firework ","color":"dark_red","bold":false,"italic":false},{"italic":false,"bold":false,"color":"gold","text":"Shield"}]'},BlockEntityTag:{Base:0,Patterns:[{Color:14,Pattern:"mr"},{Color:14,Pattern:"cs"},{Color:8,Pattern:"mc"},{Color:8,Pattern:"bts"},{Color:8,Pattern:"tts"}]}}

execute if entity @e[tag=item_spawn,name="Reflector",tag=selected_item] run give @s diamond{Enchantments:[{}],HideFlags:63,echest:1,Dropable:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to reverse the direction of nearby projectiles.","italic":false,"color":"dark_aqua"}'],Name:'[{"text":"Reflector","color":"dark_aqua","italic":false},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}} 4


tag @e[tag=selected_item,tag=item_spawn] remove selected_item

function game:extra_random
execute unless entity @s[nbt={Inventory:[{Slot:17b,id:"minecraft:arrow"}]}] run item replace entity @s inventory.8 with arrow
tag @s[nbt={active_effects:[{id:"minecraft:luck"}]}] add luck
tag @s[nbt={active_effects:[{id:"minecraft:unluck"}]}] add unluck
tag @s[tag=luck,tag=unluck] add remove_effects
tag @s[tag=remove_effect] remove unluck
tag @s[tag=remove_effect] remove luck
tag @s[tag=remove_effect] remove remove_effect
execute if score $rand loot_random matches 0 run loot give @s[tag=!unluck] loot minecraft:extra
execute if score $rand loot_random matches 0..1 run loot give @s[tag=luck,tag=!lucky,tag=!unluck] loot minecraft:extra
execute if score $rand loot_random matches 0..2 run loot give @s[tag=luck,tag=lucky,tag=!unluck] loot minecraft:extra
execute if entity @s[tag=lucky,tag=unluck] if score $rand loot_random matches 0 run loot give @s loot minecraft:extra
execute if entity @s[tag=lucky,tag=!unluck] if score $rand loot_random matches 0..1 run loot give @s loot minecraft:extra
tag @s remove luck
tag @s remove unluck

execute if entity @e[tag=lobby_chest,type=area_effect_cloud,distance=..15] run clear @s arrow
execute if entity @e[tag=lobby_chest,type=area_effect_cloud,distance=..15] run item replace entity @s inventory.8 with arrow 64

# giving out ids now (now because a player could now have a time warp and ids are required for that)
execute as @a at @s unless score @s id matches 0.. run function game:get_id