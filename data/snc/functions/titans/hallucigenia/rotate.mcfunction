## Rotation in X
$execute if entity @s[tag=snc.hall.$(head)] store result score $snc.hall.$(head) snc.rotation_x run data get entity @s Rotation[0]
$execute if entity @s[tag=snc.hall.$(tail)] store result score $snc.hall.$(tail) snc.rotation_x run data get entity @s Rotation[0]

$execute if entity @s[tag=snc.hall.$(tail)] run scoreboard players operation $snc.hall.$(tail) snc.rotation_x -= $snc.hall.$(head) snc.rotation_x

$execute if entity @s[tag=snc.hall.$(tail)] if score $snc.hall.$(tail) snc.rotation_x matches 0 at @e[tag=snc.hall.$(head),sort=nearest,limit=1] run tp @s ^ ^.2 ^-.6

$execute if entity @s[tag=snc.hall.$(tail)] if score $snc.hall.$(tail) snc.rotation_x matches -169..-1 at @e[tag=snc.hall.$(head),sort=nearest,limit=1] run tp @s ^-.02 ^.2 ^-.6 ~-8 ~
$execute if entity @s[tag=snc.hall.$(tail)] if score $snc.hall.$(tail) snc.rotation_x matches 1..169 at @e[tag=snc.hall.$(head),sort=nearest,limit=1] run tp @s ^.02 ^.2 ^-.6 ~8 ~

$execute if entity @s[tag=snc.hall.$(tail)] if score $snc.hall.$(tail) snc.rotation_x matches ..-170 at @e[tag=snc.hall.$(head),sort=nearest,limit=1] run tp @s ^-.02 ^.2 ^-.6 ~8 ~
$execute if entity @s[tag=snc.hall.$(tail)] if score $snc.hall.$(tail) snc.rotation_x matches 170.. at @e[tag=snc.hall.$(head),sort=nearest,limit=1] run tp @s ^.02 ^.2 ^-.6 ~-8 ~