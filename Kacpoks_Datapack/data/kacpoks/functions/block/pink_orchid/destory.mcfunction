particle item{item:{id:"blue_orchid",components:{custom_model_data:3793}}}
playsound block.grass.break block @a ~ ~ ~ 1 1

loot spawn ~ ~ ~ loot kacpoks:item/kwiatek1

scoreboard players set #drop kacpoks.store 1
execute positioned ~ ~.5 ~ run kill @e[distance=...2,tag=kacpoks.pink_orchid]
kill @e[distance=...2,tag=kacpoks.pink_orchid]