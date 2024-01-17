 effect give @s invisibility infinite 0 true
 effect give @s speed infinite 0 true

execute if score ticks clock matches 0 as @a[distance=..30] run playsound minecraft:aot.engine hostile @s ~ ~ ~ .3 1 .2

 execute on passengers store result entity @s Rotation[0] float 1 run execute on vehicle run data get entity @s Rotation[0]

 