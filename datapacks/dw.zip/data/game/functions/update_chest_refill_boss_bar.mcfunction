# called to update the bossbar


execute store result bossbar minecraft:refill value run scoreboard players get $time chest_refill_t
scoreboard players operation $minute chest_refill_t = $time chest_refill_t
scoreboard players operation $minute chest_refill_t /= $minute number
scoreboard players operation $calculate chest_refill_t = $minute chest_refill_t
scoreboard players operation $calculate chest_refill_t *= $minute number
scoreboard players operation $second chest_refill_t = $time chest_refill_t
scoreboard players operation $second chest_refill_t -= $calculate chest_refill_t
scoreboard players operation $second chest_refill_t /= $20 number
execute if score $second chest_refill_t matches 10.. run bossbar set minecraft:refill name [{"text":"Time until ","color":"gold"},{"text":"chests","color":"yellow"},{"text":" refill ","color":"gold"},{"text":"| ","color":"gray"},{"score":{"objective":"chest_refill_t","name":"$minute"},"color":"light_purple"},{"text":":","color":"dark_purple"},{"score":{"objective":"chest_refill_t","name":"$second"},"color":"light_purple"}]
execute if score $second chest_refill_t matches ..9 run bossbar set minecraft:refill name [{"text":"Time until ","color":"gold"},{"text":"chests","color":"yellow"},{"text":" refill ","color":"gold"},{"text":"| ","color":"gray"},{"score":{"objective":"chest_refill_t","name":"$minute"},"color":"light_purple"},{"text":":","color":"dark_purple"},{"text":"0","color":"light_purple"},{"score":{"objective":"chest_refill_t","name":"$second"},"color":"light_purple"}]