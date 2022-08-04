tellraw @s [{"text":"--------------------\n","color":"yellow"},{"text":"        LEGENDARY        \n","color":"gold"},{"text":"       Sword Name   \n","color":"gray"},{"text":"      Ok I pulled up        \n","color":"yellow"},{"text":"---------------------","color":"yellow"}]
tellraw @s[tag=sword_pulled] {"text":"Already unlocked . . .","color":"red","italic":true}
tag @s add sword_pulled