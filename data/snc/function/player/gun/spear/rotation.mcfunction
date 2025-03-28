execute on passengers run rotate @s ~ ~
execute on passengers store result entity @s Rotation[0] float 1 run scoreboard players get @s snc.rotation_x

execute unless score @s projectile matches 0.. run scoreboard players set @s projectile 0
execute if score @s projectile matches 0 on passengers run scoreboard players operation @s snc.rotation_x += #180 constant

execute if score @s projectile matches 33.. run data modify entity @s NoGravity set value 0b
scoreboard players add @s projectile 1