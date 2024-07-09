execute as @e[type=item,nbt={Age:0s},distance=..10] run data modify storage kacpoks:temp Items append from entity @s Item
###
#execute as @e[type=item,nbt={Age:0s},distance=..10] at @s run summon item_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]},item:{id:"minecraft:emerald_block",Count:1b}}
#
#execute as @p at @s run summon item_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]},item:{id:"minecraft:redstone_block",Count:1b}}
###
kill @e[type=item,nbt={Age:0s},distance=..10]
kill @e[type=experience_orb,nbt={Age:0s},distance=..10]