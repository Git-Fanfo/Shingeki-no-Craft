#particle cloud ~ ~ ~ 0 0 0 .1 5 force

particle soul_fire_flame ~ ~.5 ~ 0 0 0 .05 10 force
particle dust 0.255 0.949 1 1 ~ ~.5 ~ 0 0 0 0 10 force

execute if predicate snc:odm/is_riding_rot_1 run data modify entity @s Pose.Head[0] set value -45f
execute if predicate snc:odm/is_riding_rot_2 run data modify entity @s Pose.Head[0] set value -20f
execute if predicate snc:odm/is_riding_rot_3 run data modify entity @s Pose.Head[0] set value -10f
execute if predicate snc:odm/is_riding_rot_4 run data modify entity @s Pose.Head[0] set value 0f
execute if predicate snc:odm/is_riding_rot_5 run data modify entity @s Pose.Head[0] set value 10f
execute if predicate snc:odm/is_riding_rot_6 run data modify entity @s Pose.Head[0] set value 20f
execute if predicate snc:odm/is_riding_rot_7 run data modify entity @s Pose.Head[0] set value 45f
execute if predicate snc:odm/is_riding_rot_8 run data modify entity @s Pose.Head[0] set value 80f

execute unless predicate snc:is_riding_projectile run function snc:player/gun/spear/land