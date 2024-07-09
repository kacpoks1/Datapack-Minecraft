data merge storage kacpoks:temp {Items:[]}
execute store result storage kacpoks:temp xp int 1 run scoreboard players get @s xp
function kacpoks:save_items0
loot spawn ~ ~ ~ loot kacpoks:item/player_head
data modify storage swrg:temp Name set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{temp:1b}}}},limit=1] Item.components."minecraft:profile".name 
##
scoreboard players add #id math 1
summon marker ~ ~ ~ {Tags:[new,grave]}
execute as @e[type=marker,tag=new] positioned ~ ~ ~ run function kacpoks:grave_create
scoreboard players set @s death 0
