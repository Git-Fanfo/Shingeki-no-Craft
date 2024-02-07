execute if score $rock beast_vars matches 1 anchored eyes run summon snowball ^ ^7 ^5 {Tags:["not_mov","motion_throw_area","beast"],Passengers:[{id:"minecraft:item_display",view_range:5f,Tags:["bullet","area_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.8f,1.8f,1.8f]},item:{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:62}}}],Item:{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}}}

execute if score $rock beast_vars matches 1 anchored eyes run summon snowball ^-2.5 ^4 ^3.5 {Tags:["not_mov","motion_throw_area","beast","1l"],Passengers:[{id:"minecraft:item_display",view_range:5f,Tags:["bullet","area_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.8f,1.8f,1.8f]},item:{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:62}}}],Item:{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}}}

execute if score $rock beast_vars matches 1 anchored eyes run summon snowball ^2.5 ^4 ^3.5 {Tags:["not_mov","motion_throw_area","beast","1r"],Passengers:[{id:"minecraft:item_display",view_range:5f,Tags:["bullet","area_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.8f,1.8f,1.8f]},item:{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:62}}}],Item:{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}}}

execute if score $rock beast_vars matches 1 anchored eyes run summon snowball ^-6 ^9 ^2 {Tags:["not_mov","motion_throw_area","beast","2l"],Passengers:[{id:"minecraft:item_display",view_range:5f,Tags:["bullet","area_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.8f,1.8f,1.8f]},item:{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:62}}}],Item:{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}}}

execute if score $rock beast_vars matches 1 anchored eyes run summon snowball ^6 ^9 ^2 {Tags:["not_mov","motion_throw_area","beast","2r"],Passengers:[{id:"minecraft:item_display",view_range:5f,Tags:["bullet","area_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.8f,1.8f,1.8f]},item:{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:62}}}],Item:{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}}}

execute if score $rock beast_vars matches 0 rotated ~ 0 run playsound aot.gore player @a ~ ~ ~ 2
execute if score $rock beast_vars matches 0 rotated ~ 0 run particle block redstone_block ^ ^10 ^4 .6 .6 .6 1 500 force
execute if score $rock beast_vars matches 0 as @e[tag=aj.beast.locator.right_hand,sort=nearest,limit=1] on passengers on passengers on passengers run function snc:shifters/mobs/beast/action/throw_area/dismount
# locator > snowball > item_display > item_display and Valentina

execute on vehicle run attribute @s minecraft:generic.scale base set 7.3