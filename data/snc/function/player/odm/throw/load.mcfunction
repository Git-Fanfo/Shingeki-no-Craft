advancement grant @s only snc:survey/odm/iceburst
item modify entity @s weapon.offhand snc:odm/gas/20
playsound minecraft:entity.breeze.idle_air player @a ~ ~ ~ 1 1
playsound minecraft:entity.breeze.charge player @a ~ ~ ~ 1 1
particle minecraft:gust ~ ~1 ~ 0 0 0 1 1 force
particle minecraft:cloud ~ ~1 ~ 0 0 0 .3 50 force
title @s times 0 2s 10t
title @s title ""
title @s subtitle [{"text":"✔ ","color": "green"},{"translate":"aot.odm.gas2","bold": true}," ✔"]