# called when there is no warp point yet.

tellraw @s [{"text":"- ","color":"gray"},{"text":"You cannot use this yet. Please wait a couple of seconds and try again.","color":"red"}]
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.67

# giving back the clock
give @s clock{explosive_bow:1,HideFlags:63,echest:1,Unbreakable:1b,display:{Lore:['{"text":"Drop to warp to your position three seconds ago.","italic":false,"color":"dark_purple"}'],Name:'[{"text":"Time ","color":"gold","bold":true,"italic":false},{"italic":false,"bold":true,"color":"dark_purple","text":"Warp"},{"text":" <","color":"dark_gray","bold":true,"italic":false},{"keybind":"key.drop","color":"gray","bold":false,"italic":false},{"text":">","color":"dark_gray","bold":true,"italic":false}]'}}
