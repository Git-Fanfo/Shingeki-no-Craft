# ATTACK
execute if entity @s[scores={atk=140}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:129}}}
execute if entity @s[scores={atk=138}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:130}}}
execute if entity @s[scores={atk=136}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:131}}}
execute if entity @s[scores={atk=134}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:132}}}
execute if entity @s[scores={atk=132}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:133}}}
execute if entity @s[scores={atk=130}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:134}}}
execute if entity @s[scores={atk=128}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:135}}}
execute if entity @s[scores={atk=126}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:136}}}
execute if entity @s[scores={atk=124}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:137}}}
execute if entity @s[scores={atk=122}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:138}}}
execute if entity @s[scores={atk=120}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:139}}}
execute if entity @s[scores={atk=118}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:140}}}
execute if entity @s[scores={atk=116}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:141}}}
execute if entity @s[scores={atk=113}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:142}}}
execute if entity @s[scores={atk=109}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:143}}}
execute if entity @s[scores={atk=105}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:144}}}
execute if entity @s[scores={atk=108}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:145}}}
execute if entity @s[scores={atk=104}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:146}}}
execute if entity @s[scores={atk=99}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:147}}}
execute if entity @s[scores={atk=95}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:148}}}

execute if entity @s[scores={atk=92}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:149}}}

# I made a system to generalize it
execute if entity @s[scores={atk=99}] run execute as @a[distance=..12] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 8

execute if entity @s[scores={atk=90}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:150}}}
execute if entity @s[scores={atk=88}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:151}}}
execute if entity @s[scores={atk=86}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:152}}}
execute if entity @s[scores={atk=84}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:153}}}

execute if entity @s[scores={atk=..80}] run tag @s remove attack