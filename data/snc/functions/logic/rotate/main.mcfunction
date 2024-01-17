# Reset translation
data modify entity @s transformation.translation set value [0f,0f,0f]

data modify entity @s start_interpolation set value -1
data modify entity @s interpolation_duration set value 2

execute if score @s rot_impulse_x matches 1..90 run function snc:logic/rotate/1_90/main
execute if score @s rot_impulse_x matches 91..180 run function snc:logic/rotate/91_180/main
execute if score @s rot_impulse_x matches -90..-1 run function snc:logic/rotate/90_1/main
execute if score @s rot_impulse_x matches -180..-91 run function snc:logic/rotate/180_91/main

execute store result entity @s transformation.right_rotation float 1 run data get entity @s transformation.left_rotation 1