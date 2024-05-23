#particle minecraft:dust{color:[1f, 1f, 1f], scale:2.5f} ^ ^ ^2 .1 .1 .1 0 1 force
execute unless score @s projectile matches 5.. run function snc:player/gun/spear/particles

execute if score @s projectile matches 1.. run scoreboard players add @s projectile 1
execute unless score @s projectile matches 1.. unless predicate snc:is_riding run scoreboard players set @s projectile 1

execute if score @s projectile matches 1 run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 5 .9
execute if score @s projectile matches 1..5 run tp ^ ^ ^-.1
execute if score @s projectile matches 20 run function snc:player/gun/spear/land
