##### HOW TO CREATE A SHIFTER #####
scoreboard players set $jaw.doesnt.exists shifter_vars 1
title @s times 0 2s 10
title @s title {"translate":"aot.titan.armor","color":"yellow"}
title @s subtitle [{"translate":"aot.respawn.desc","color":"yellow"}]

#execute if score $cart.doesnt.exists shifter_vars matches 1 if predicate snc:chance/35 unless entity @s[scores={shifter_vars=1..}] run function snc:shifters/transfer/get with storage minecraft:cart
#execute if score $beast.doesnt.exists shifter_vars matches 1 if predicate snc:chance/35 unless entity @s[scores={shifter_vars=1..}] run function snc:shifters/transfer/get with storage minecraft:beast
#execute if score $colossal.doesnt.exists shifter_vars matches 1 if predicate snc:chance/35 unless entity @s[scores={shifter_vars=1..}] run function snc:shifters/transfer/get with storage minecraft:colossal