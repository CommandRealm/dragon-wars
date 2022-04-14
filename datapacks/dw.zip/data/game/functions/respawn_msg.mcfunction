playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1
title @s[scores={respawn=60}] title {"text":"3 seconds ","color":"gold"}
title @s[scores={respawn=40}] title {"text":"2 seconds ","color":"gold"}
title @s[scores={respawn=20}] title {"text":"1 second ","color":"gold"}
title @s[scores={respawn=0}] title {"text":"FIGHT!","color":"gold","bold":true}
title @s[scores={respawn=0}] times 5 20 5

title @s subtitle {"text":"until you respawn . . .","color":"red"}
title @s[scores={respawn=0}] subtitle {"text":"You have respawned.","color":"red"}