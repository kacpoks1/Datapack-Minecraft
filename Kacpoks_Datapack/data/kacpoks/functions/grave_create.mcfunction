tag @s remove new
scoreboard players operation @s id = #id math
data modify entity @s data.Items set from storage kacpoks:temp Items
data modify entity @s data.xp set from storage kacpoks:temp xp

summon interaction ~ ~ ~ {width:1f,height:1f,Tags:["grave","new"]}

summon item_display ~ ~ ~ {Tags:["grave","new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.1f,0.8f]},item:{id:"minecraft:dirt"}}
summon item_display ~ ~.1 ~ {Tags:["grave","new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.65f,0.1f,0.65f]},item:{id:"minecraft:dirt"}}
summon item_display ~ ~.4 ~.4 {Tags:["grave","new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.8f,0.1f]},item:{id:"minecraft:cobblestone"}}
summon item_display ~ ~.4 ~.4 {Tags:["grave","new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.9f,0.09f]},item:{id:"minecraft:cobblestone"}}

summon item_display ~ ~.4 ~ {Rotation:[0.0f,0.0f],Tags:["grave","new","head"],transformation:{left_rotation:[0.026936125709889444f,-0.18023382557982892f,-0.14533432887732786f,0.9724547013092063f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},item:{id:"minecraft:dirt",}}
data modify entity @e[limit=1,tag=grave,tag=head,tag=new] item set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{temp:1b}}}},limit=1] Item
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{temp:1b}}}}, limit=1]

summon text_display ~ ~.5 ~.35 {Rotation:[180.0f,0f],default_background:1b,Tags:["grave","new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:'{"nbt":"Name","storage":"kacpoks:temp","interpret":false}'}
data merge entity @e[type=text_display,limit=1,tag=new,tag=grave] {background:0,default_background:0b}

execute as @e[tag=grave,tag=new] run scoreboard players operation @s id = #id math

tag @e[tag=grave,tag=new] remove new