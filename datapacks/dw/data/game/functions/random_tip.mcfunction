summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand tip run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand tip %= $mod tip
kill @e[type=area_effect_cloud,tag=random]
kill @e[tag=tip]
execute if score $rand tip matches 0 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"For fast kills, shoot people while they\'re flying over the void.","color":"yellow"}'}
execute if score $rand tip matches 1 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Fireworks spawn on the purple platforms.","color":"yellow"}'}
execute if score $rand tip matches 2 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Lucky Armor increases your chances for extra items.","color":"yellow"}'}
execute if score $rand tip matches 3 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Ninja Armor gives you speed.","color":"yellow"}'}
execute if score $rand tip matches 4 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Tridents will return to you, even from the void.","color":"yellow"}'}
execute if score $rand tip matches 5 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"The Rage Axe gives you strength after every kill.","color":"yellow"}'}
execute if score $rand tip matches 6 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"The middle of the map contains the most chests.","color":"yellow"}'}
execute if score $rand tip matches 7 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Throw the TNT to explode your enemies.","color":"yellow"}'}
execute if score $rand tip matches 8 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Use the shield to block arrows while you\'re flying.","color":"yellow"}'}
execute if score $rand tip matches 9 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Don\'t stray too far from the map, you\'ll lose your rockets.","color":"yellow"}'}
execute if score $rand tip matches 10 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Multishot crossbows can kill several opponents at once.","color":"yellow"}'}
execute if score $rand tip matches 11 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Piercing Crossbows will damage players through shields.","color":"yellow"}'}

execute if score $rand tip matches 12 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"You can throw TNT while you fly. Opponents may not expect it!","color":"yellow"}'}
execute if score $rand tip matches 13 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"The \\"Brutes\\" from the Monster Horde are tougher than the fiends or monsters.","color":"yellow"}'}
execute if score $rand tip matches 14 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Use the Tornado Jump to get yourself out of tough situations.","color":"yellow"}'}
execute if score $rand tip matches 15 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"You can use the Egg of Slow Falling on yourself or others.","color":"yellow"}'}
execute if score $rand tip matches 16 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Lucky Armor will block undesirable potion effects from the brewing stand.","color":"yellow"}'}
execute if score $rand tip matches 17 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Use the Swapper Beam to swap places with another player.","color":"yellow"}'}
execute if score $rand tip matches 18 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"If you run out of health points, you die.","color":"yellow"}'}
execute if score $rand tip matches 19 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Use the Super Firework to fly for an extended period of time.","color":"yellow"}'}
execute if score $rand tip matches 20 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Use the Monster Horde wisely. The mobs can attack you.","color":"yellow"}'}

execute if score $rand tip matches 21 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Arrows from Piercing Crossbows can break through ice mines.","color":"yellow"}'}
execute if score $rand tip matches 22 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"You can use Ice Mines to give yourself a chance to heal.","color":"yellow"}'}
execute if score $rand tip matches 23 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Gladiator Armor makes every attack you use stronger.","color":"yellow"}'}
execute if score $rand tip matches 24 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Cactus Armor will deal damage to players who attack you.","color":"yellow"}'}
execute if score $rand tip matches 25 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Use the Flame Bow to temporarily remove other people\'s elytras.","color":"yellow"}'}
execute if score $rand tip matches 26 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Use Fire Swords to trap your opponents.","color":"yellow"}'}
execute if score $rand tip matches 27 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Ice Mines will trap your opponents.","color":"yellow"}'}
execute if score $rand tip matches 28 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Use the Health Potion to prepare for battle quickly.","color":"yellow"}'}
execute if score $rand tip matches 29 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"The Brewing Stand won\'t always give you good effects.","color":"yellow"}'}
execute if score $rand tip matches 30 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"Throw Poison Potions on the Firework Platforms to make them unaccessable to other players.","color":"yellow"}'}
execute if score $rand tip matches 31 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"You can set all kinds of options in the menu.","color":"yellow"}'}
execute if score $rand tip matches 32 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"The experience bar shows the firework spawn timer.","color":"yellow"}'}
execute if score $rand tip matches 33 run summon area_effect_cloud 0 5 0 {Tags:["tip"],Duration:100,CustomName:'{"text":"A flying player\'s hitbox is at the feet.","color":"yellow"}'}