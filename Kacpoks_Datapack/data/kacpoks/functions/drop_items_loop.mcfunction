summon item ~ ~ ~ {Item:{id:"stone",count:1b}, Tags:[from_grave],PickupDelay:0s}
data modify entity @e[limit=1,tag=from_grave,type=item] Item set from storage kacpoks:temp Items[0]
data remove storage kacpoks:temp Items[0]
execute store result score #check math run data get storage kacpoks:temp Items
tag @e[type=item,tag=from_grave] remove from_grave
execute if score #check math matches 1.. run function kacpoks:drop_items_loop