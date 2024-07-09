scoreboard players operation #id math = @s id

execute as @e[type=marker,tag=grave] if score @s id = #id math run data modify storage kacpoks:temp Items set from entity @s data.Items
execute as @e[type=marker,tag=grave] if score @s id = #id math run data modify storage kacpoks:temp xp set from entity @s data.xp

execute store result score #check math run data get storage kacpoks:temp Items
execute if score #check math matches 1.. run function kacpoks:drop_items_loop
###
execute as @e[tag=grave] if score @s id = #id math run kill @s
particle soul ~ ~ ~ .6 .6 .6 0 50 normal @a 
playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 1

summon experience_orb ~ ~ ~ {Value:0,Tags:[from_grave]}
execute store result entity @e[type=experience_orb,tag=from_grave,limit=1] Value short 1 run data get storage kacpoks:temp xp
tag @e[type=experience_bottle,tag=from_grave] remove from_grave