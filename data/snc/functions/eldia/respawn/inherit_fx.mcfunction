playsound minecraft:item.totem.use master @a ~ ~ ~ 1 1.2
particle minecraft:totem_of_undying ~ ~2 ~ .5 .5 .5 .2 50 force
effect give @s speed 1 2 true
effect give @s invisibility 1 0 true
effect give @s slow_falling 2 0 true
title @s times 20 80 20
title @s subtitle [{"translate":"aot.goodbye","color":"gray"}," ",{"selector":"@s","bold":true},"..."]