execute on passengers run tp @s ~ ~ ~ ~ ~
execute on passengers store result entity @s Rotation[0] float 1 run scoreboard players get @s snc.rotation_x

execute unless score @s projectile matches 0.. run scoreboard players set @s projectile 0
execute if score @s projectile matches 0 on passengers run scoreboard players operation @s snc.rotation_x += #180 constant

execute if score @s projectile matches 33.. run data modify entity @s NoGravity set value 0b
scoreboard players add @s projectile 1

# I'll use mov to store rotation
#execute store result score @s movz run data get entity @s Motion[1] 10
#execute if score @s movz matches 4.. on passengers at @s run tp @s ~ ~ ~ ~ 50
#execute if score @s movz matches 2..3 on passengers at @s run tp @s ~ ~ ~ ~ 20
#execute if score @s movz matches 1 on passengers at @s run tp @s ~ ~ ~ ~ 10
#execute if score @s movz matches 0 on passengers at @s run tp @s ~ ~ ~ ~ 0
#execute if score @s movz matches -5..-1 on passengers at @s run tp @s ~ ~ ~ ~ -20
#execute if score @s movz matches -7..-6 on passengers at @s run tp @s ~ ~ ~ ~ -30
#execute if score @s movz matches -9..-8 on passengers at @s run tp @s ~ ~ ~ ~ -45
#execute if score @s movz matches ..-10 on passengers at @s run tp @s ~ ~ ~ ~ ~-80

#execute on passengers store result entity @s Rotation[0] float 1 run data get entity @s Rotation[0]