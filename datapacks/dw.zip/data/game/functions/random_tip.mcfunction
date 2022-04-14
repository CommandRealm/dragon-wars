scoreboard players set $mod tip 30
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand tip run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand tip %= $mod tip
kill @e[type=area_effect_cloud,tag=random]
kill @e[type=marker,tag=tip]
execute if score $rand tip matches 0 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"For fast kills, shoot people while they\'re flying over the void.","color":"yellow"}'}
execute if score $rand tip matches 1 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Fireworks spawn on the purple platforms.","color":"yellow"}'}
execute if score $rand tip matches 2 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Lucky Armor increases your chances for extra items.","color":"yellow"}'}
execute if score $rand tip matches 3 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"The Rage Axe is especially useful in larger games.","color":"yellow"}'}
execute if score $rand tip matches 4 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"The chests are in the same position on all maps.","color":"yellow"}'}
execute if score $rand tip matches 5 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"TNT can be thrown while flying.","color":"yellow"}'}
execute if score $rand tip matches 6 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Use the shield to block arrows while you\'re flying.","color":"yellow"}'}
execute if score $rand tip matches 7 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Don\'t stray too far from the map, you\'ll lose your rockets.","color":"yellow"}'}
execute if score $rand tip matches 8 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Piercing Crossbows will damage players through shields.","color":"yellow"}'}
execute if score $rand tip matches 9 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"The \\"Brutes\\" from the Monster Horde are tougher than the fiends or monsters.","color":"yellow"}'}
execute if score $rand tip matches 10 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Use the Tornado Jump to get yourself out of tough situations.","color":"yellow"}'}
execute if score $rand tip matches 11 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Lucky Armor will block undesirable potion effects from the Risky Brew.","color":"yellow"}'}
execute if score $rand tip matches 12 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Use the Swapper Beam to put your opponent in a difficult situation.","color":"yellow"}'}
execute if score $rand tip matches 13 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Use the Monster Horde wisely. The mobs can attack you.","color":"yellow"}'}
execute if score $rand tip matches 14 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Arrows from Piercing Crossbows can break through ice mines.","color":"yellow"}'}
execute if score $rand tip matches 15 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"You can use Ice Mines to give yourself a chance to heal.","color":"yellow"}'}
execute if score $rand tip matches 16 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Cactus Armor can break the elytra of anyone who hits you.","color":"yellow"}'}
execute if score $rand tip matches 17 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Use the Flame Bow to temporarily remove other people\'s elytras.","color":"yellow"}'}
execute if score $rand tip matches 18 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Use Fire Swords to trap your opponents.","color":"yellow"}'}
execute if score $rand tip matches 19 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Use the Health Potion to ready for battle quickly.","color":"yellow"}'}
execute if score $rand tip matches 20 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Throw Poison Potions on firework platforms to make them unaccessable to other players.","color":"yellow"}'}
execute if score $rand tip matches 21 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"The experience bar shows the firework spawn timer.","color":"yellow"}'}
execute if score $rand tip matches 22 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"A flying player\'s hitbox is at their feet.","color":"yellow"}'}
execute if score $rand tip matches 23 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Levitation Blasts can be used as a recovery in addition to a weapon.","color":"yellow"}'}

execute if score $rand tip matches 24 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Levitation Blasts can be used as a recovery in addition to a weapon.","color":"yellow"}'}
execute if score $rand tip matches 25 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Drop the Time Bomb at your feet when a player is rushing you.","color":"yellow"}'}
execute if score $rand tip matches 26 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Try to remember your previous positions while holding a Time Warp.","color":"yellow"}'}
execute if score $rand tip matches 27 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"The Firework Remover can be a nasty surprise to unsuspecting players.","color":"yellow"}'}
execute if score $rand tip matches 28 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"You can dive bomb into the floor without taking damage.","color":"yellow"}'}
execute if score $rand tip matches 29 run summon marker 0 5 0 {Tags:["tip"],CustomName:'{"text":"Shooting an arrow while flying with a Power Bow can one-shot players.","color":"yellow"}'}