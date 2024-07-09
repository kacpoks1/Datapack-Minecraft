execute as @e[type=item_frame] at @s run function kacpoks:block/detect/place
execute as @e[type=interaction] at @s run function kacpoks:block/detect/loop

execute as @e[scores={death=1}] at @s run function kacpoks:save_items

execute as @e[tag=grave,type=interaction] if data entity @s interaction at @s run function kacpoks:drop_items