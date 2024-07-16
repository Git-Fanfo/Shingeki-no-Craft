# Store first angle, wait 5 seconds first
execute unless score @s snc.rotation_y matches -181..181 store result score @s snc.rotation_y run data get entity @s Rotation[0]
tp @s ~ ~ ~ ~1 ~
execute store result score @s snc.rotation_x run data get entity @s Rotation[0]

execute if block ^ ^-1 ^45 air run tp ~ ~-1 ~
execute if block ^ ^ ^45 #snc:touch_grass run tp ~ ~1 ~

scoreboard players operation @s rot_throw = @s snc.rotation_x
scoreboard players operation @s snc.rotation_x %= #15 constant

execute positioned ^ ^ ^45 run function snc:interact/wall/fill
execute rotated ~180 0 positioned ^ ^ ^45 run function snc:interact/wall/fill

execute if score @s rot_throw = @s snc.rotation_y positioned over world_surface align xyz positioned ~.5 ~ ~.5 run function snc:player/build/bell/found 
execute if score @s rot_throw = @s snc.rotation_y run kill

execute if score @s snc.despawn matches 1000.. positioned over world_surface align xyz positioned ~.5 ~ ~.5 run function snc:player/build/bell/found
execute if score @s snc.despawn matches 1000.. run kill