# called to display the fight text

# text
execute if score $time timer matches 9899 run title @a[tag=playing] title {"text":"F","color":"red","bold":true}
execute if score $time timer matches 9896 run title @a[tag=playing] title {"text":"Fi","color":"red","bold":true}
execute if score $time timer matches 9893 run title @a[tag=playing] title {"text":"Fig","color":"red","bold":true}
execute if score $time timer matches 9890 run title @a[tag=playing] title {"text":"Figh","color":"red","bold":true}
execute if score $time timer matches 9887 run title @a[tag=playing] title {"text":"Fight","color":"red","bold":true}
execute if score $time timer matches 9880 run title @a[tag=playing] title ["",{"text":"Fight","color":"red","bold":true},{"text":" |","obfuscated": false}]
execute if score $time timer matches 9877 run title @a[tag=playing] title ["",{"text":"Fight","color":"red","bold":true},{"text":" |","obfuscated": true}]
execute if score $time timer matches 9870 run title @a[tag=playing] title ["",{"text":"| ","obfuscated": false},{"text":"Fight","color":"red","bold":true},{"text":" |","obfuscated": true}]
execute if score $time timer matches 9867 run title @a[tag=playing] title ["",{"text":"| ","obfuscated": true},{"text":"Fight","color":"red","bold":true},{"text":" |","obfuscated": true}]

execute if score $time timer matches 9899 as @a[tag=playing] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0
execute if score $time timer matches 9896 as @a[tag=playing] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0
execute if score $time timer matches 9893 as @a[tag=playing] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0
execute if score $time timer matches 9890 as @a[tag=playing] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0
execute if score $time timer matches 9887 as @a[tag=playing] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0
execute if score $time timer matches 9880 as @a[tag=playing] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.67
execute if score $time timer matches 9877 as @a[tag=playing] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.75
execute if score $time timer matches 9870 as @a[tag=playing] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.67
execute if score $time timer matches 9867 as @a[tag=playing] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.75

execute if score $time timer matches 9867 as @a[tag=playing] at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.25 2

execute if score $time timer matches 9867 run title @a[tag=playing] subtitle [{"text":"= ","color":"dark_purple"},{"text":"Get ready to","color":"gray","italic":false},{"text":" deploy ","color":"yellow","italic":false},{"text":"your","color":"gray","italic":false},{"text":" elytra","color":"light_purple","italic":false},{"text":"!","color":"gray"},{"text":" =","color":"dark_purple"}]

# setting title times
execute if score $time timer matches 9801 run title @a[tag=playing] times 5 20 5