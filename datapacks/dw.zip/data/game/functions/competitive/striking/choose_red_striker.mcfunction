# called to choose a red striker
tag @a remove striker
execute unless entity @a[tag=playing,team=red,tag=!striked] run tag @a[tag=playing] remove striked
tag @r[tag=playing,team=red,tag=!striked] add striker
tag @a[tag=striker] add striked