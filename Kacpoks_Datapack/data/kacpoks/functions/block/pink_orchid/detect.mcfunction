stopsound @a * entity.item_frame.place
playsound block.grass.place block @a ~.5 ~ ~.5 1 1

execute unless score #drop kacpoks.store matches 1.. positioned ~.5 ~ ~.5 unless block ~ ~-.5 ~ #minecraft:dead_bush_may_place_on run function kacpoks:block/pink_orchid/back
execute unless score #drop kacpoks.store matches 1.. positioned ~.5 ~ ~.5 if entity @e[distance=...5,type=!item_frame,tag=kacpoks.pink_orchid] run function kacpoks:block/pink_orchid/back
execute positioned ~.5 ~ ~.5 if block ~ ~-.5 ~ #minecraft:dead_bush_may_place_on unless entity @e[distance=...5,type=!item_frame,tag=kacpoks.pink_orchid] run function kacpoks:block/pink_orchid/place

scoreboard players reset #drop kacpoks.store
kill @s