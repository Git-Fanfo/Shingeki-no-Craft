execute on vehicle run scoreboard players set @s projectile 0
execute unless entity @p[distance=..5] on vehicle run data remove entity @s interaction

execute if score @s projectile matches 1.. run scoreboard players remove @s projectile 1
execute if score @s projectile matches ..0 run scoreboard players reset @s projectile

## Move model
execute unless score @s projectile matches 25.. store result entity @s Pose.Head[0] float 1 on vehicle on target run data get entity @s Rotation[1]
execute unless score @s projectile matches 50.. store result entity @s Rotation[0] float 1 on vehicle on target run data get entity @s Rotation[0]
execute unless score @s projectile matches 1.. store result entity @s Rotation[1] float 1 on vehicle on target run data get entity @s Rotation[1]

## Sounds
execute if score @s projectile matches 99 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 2
execute if score @s projectile matches 75 run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 .75
execute if score @s projectile matches 50 run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 .8
execute if score @s projectile matches 25 run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 .85
execute if score @s projectile matches 1 run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 .9
execute if score @s projectile matches 1 run playsound minecraft:item.crossbow.loading_end master @a ~ ~ ~ 1 0
## Display
execute unless score @s projectile matches 1.. on vehicle on target run title @s times 0t 2t 0t
execute unless score @s projectile matches 1.. on vehicle on target run title @s subtitle [{"translate":"aot.cannon.hint.desc"}," ",{"keybind":"key.sneak","color":"dark_red"}," ",{"translate":"aot.cannon.hint.desc2"}]
execute unless score @s projectile matches 1.. on vehicle on target run title @s title ""
execute unless score @s projectile matches 1.. anchored feet on vehicle on target run particle minecraft:dust{color:[1f, 0.122f, 0.122f], scale:.9f} ^ ^.4 ^5 0 0 0 0 1 force @s
execute unless score @s projectile matches 1.. anchored feet on vehicle on target run particle minecraft:dust{color:[1f, 0.122f, 0.122f], scale:.9f} ^ ^.4 ^9 0 0 0 0 1 force @s
execute unless score @s projectile matches 1.. anchored feet on vehicle on target run particle minecraft:dust{color:[1f, 0.122f, 0.122f], scale:.9f} ^ ^.4 ^13 0 0 0 0 1 force @s
execute unless score @s projectile matches 1.. anchored feet on vehicle on target run particle minecraft:dust{color:[1f, 0.122f, 0.122f], scale:.9f} ^ ^.4 ^17 0 0 0 0 1 force @s
execute unless score @s projectile matches 1.. anchored feet on vehicle on target run particle minecraft:dust{color:[1f, 0.122f, 0.122f], scale:.9f} ^ ^.4 ^21 0 0 0 0 1 force @s
## Shoot
execute unless score @s projectile matches 1.. if entity @p[distance=..5,predicate=snc:player/keybinds/sneak] anchored feet run function snc:interact/canon/shoot