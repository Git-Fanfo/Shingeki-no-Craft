 effect give @s invisibility infinite 0 true
 effect give @s speed infinite 0 true

execute if score ticks clock matches 0 as @a[distance=..30] run playsound minecraft:aot.engine hostile @s ~ ~ ~ .3 1 .2

execute on passengers run rotate @s ~ 0