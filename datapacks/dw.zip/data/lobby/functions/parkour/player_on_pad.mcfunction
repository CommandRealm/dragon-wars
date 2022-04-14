# called when there is a player on the course pad.

execute as @a[tag=elytra_course_pad] unless entity @s[x=-26,y=65,z=6,dx=4,dy=2,dz=4] run function lobby:parkour/step_off_pad
execute as @a[tag=elytra_course_pad] at @s run kill @e[type=item,distance=..1.5]