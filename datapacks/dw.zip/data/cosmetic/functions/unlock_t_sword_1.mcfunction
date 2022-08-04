tellraw @s [{"text":"--------------------\n","color":"yellow"},{"text":"        LEGENDARY        \n","color":"gold"},{"text":"       Sword Name   \n","color":"gray"},{"text":"  Super Secret Winners        \n","color":"yellow"},{"text":"---------------------","color":"yellow"}]
tellraw @s[tag=sword_secret] {"text":"Already unlocked . . .","color":"red","italic":true}
tag @s add sword_secret