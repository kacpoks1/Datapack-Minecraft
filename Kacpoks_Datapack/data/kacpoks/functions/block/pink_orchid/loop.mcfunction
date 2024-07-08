setblock ~ ~ ~ air destroy

execute unless score #drop kacpoks.store matches 1.. if data entity @s attack run function kacpoks:block/pink_orchid/destory
execute unless score #drop kacpoks.store matches 1.. unless block ~ ~-.5 ~ #minecraft:dead_bush_may_place_on run function kacpoks:block/pink_orchid/destory

scoreboard players reset #drop kacpoks.store