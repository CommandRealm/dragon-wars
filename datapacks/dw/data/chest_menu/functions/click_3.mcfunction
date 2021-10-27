tellraw @s[scores={menu=1,click_3=1..}] [{"text":"The testers were: ","color":"dark_purple"},{"text":"\nArrgs, PurpleSimp, GeneralGuy64, VoidGolem, physa, Nxmes, GoldSlimeling91, CoolCheeto2, Leesobee, endermint06, berglerr, T_Man_Happy, Theluco617, Peeps__, ZachEP, NauticaElements, BelenDrane, Warrior0120, gaysaregreat, OPWolf2323, EpicStar123, Business_Pug, Cosmic_Evil, CrazyPig19, matthoff8, Pulluxx, Moesh, pcgus, FlameAndDiamond, Bagee, and BobaFate.","color":"light_purple"}]
execute if entity @s[scores={menu=1,click_3=1..}] run function chest_menu:start_credits
execute if entity @s[scores={menu=2,click_3=1..}] run function chest_menu:droppable_sword
execute if entity @s[scores={menu=3,click_3=1..}] run function chest_menu:start_sword
execute if entity @s[scores={menu=0,click_3=1..}] run function chest_menu:start_cosmetics
execute if entity @s[scores={menu=4,click_3=1..}] run function chest_menu:start_particles
execute if entity @s[scores={menu=5,click_3=1..}] run function chest_menu:start_sword
execute if entity @s[scores={menu=6,click_3=1..}] run function chest_menu:start_celebration
execute if entity @s[scores={menu=7,click_3=1..}] run function chest_menu:start_statistics
execute if entity @s[scores={menu=8,click_3=1..}] run function chest_menu:toggle_prefix
playsound minecraft:ui.button.click master @s ~ ~ ~ 

