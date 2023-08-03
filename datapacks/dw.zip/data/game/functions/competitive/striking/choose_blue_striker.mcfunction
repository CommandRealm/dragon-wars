# called to choose a blue striker
tag @a remove striker
execute unless entity @a[tag=playing,team=blue,tag=!striked] run tag @a[tag=playing,team=blue] remove striked
tag @r[tag=playing,team=blue,tag=!striked] add striker
tag @a[tag=striker] add striked