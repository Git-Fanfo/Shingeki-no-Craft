execute unless entity @p[distance=..5] on vehicle run data remove entity @s interaction
# Move model
execute store result entity @s Pose.Head[0] float 1 on vehicle on target run data get entity @s Rotation[1]
execute store result entity @s Rotation[0] float 1 on vehicle on target run data get entity @s Rotation[0]


execute store result entity @s Rotation[1] float 1 on vehicle on target run data get entity @s Rotation[1]

# Show
execute on vehicle on target run particle minecraft:dust{color:[1f, 0.122f, 0.122f], scale:1.4f} ^ ^2.5 ^5 0 0 0 0 1 force @s
execute on vehicle on target run particle minecraft:dust{color:[1f, 0.122f, 0.122f], scale:1.4f} ^ ^2.5 ^9 0 0 0 0 1 force @s
execute on vehicle on target run particle minecraft:dust{color:[1f, 0.122f, 0.122f], scale:1.4f} ^ ^2.5 ^13 0 0 0 0 1 force @s
execute on vehicle on target run particle minecraft:dust{color:[1f, 0.122f, 0.122f], scale:1.4f} ^ ^2.5 ^17 0 0 0 0 1 force @s
execute on vehicle on target run particle minecraft:dust{color:[1f, 0.122f, 0.122f], scale:1.4f} ^ ^2.5 ^21 0 0 0 0 1 force @s

execute if score @s projectile matches 1.. run scoreboard players remove @s projectile 1
execute if score @s projectile matches ..0 run scoreboard players reset @s projectile

execute unless score @s projectile matches 1.. if entity @p[predicate=snc:player/is_sneaking] anchored eyes run function snc:interact/canon/shoot