ride @s dismount
clear @s
tag @s remove snc.handcuffs
scoreboard players reset @s snc.lock

title @s times 0t 4s 1s
title @s subtitle {"translate":"aot.handcuffs.freedom.desc","bold": true,"color":"yellow"}
title @s title [{"translate":"aot.handcuffs.freedom","bold": true,"color":"green"}]

playsound minecraft:block.vault.open_shutter master @a ~ ~ ~ 2 1.2
playsound minecraft:block.vault.insert_item master @a ~ ~ ~ 2 1.1