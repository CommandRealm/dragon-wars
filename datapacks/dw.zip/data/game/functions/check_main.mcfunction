# called to see if we should call main
execute unless score $number mode matches 3 run function game:main
execute if score $number mode matches 3 if score $time competitive matches 2101.. run function game:main
execute if score $number mode matches 3 run function game:competitive/main
execute as @a[scores={rc=1..},nbt={SelectedItemSlot:6}] at @s run function game:spectate_start
execute as @a[scores={rc=1..},nbt={SelectedItemSlot:2}] at @s run function game:try_to_rejoin_game