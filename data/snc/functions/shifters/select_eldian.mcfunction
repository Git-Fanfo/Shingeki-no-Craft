execute if entity @s[type=player] run function snc:player/drop_inv
tag @s add first

##### HOW TO CREATE A SHIFTER #####
execute if score $attack.doesnt.exists shifter_vars matches 1 if predicate snc:chance/35 unless entity @s[scores={shifter_vars=1..}] run function snc:shifters/transfer/get with storage minecraft:attack
execute if score $cart.doesnt.exists shifter_vars matches 1 if predicate snc:chance/35 unless entity @s[scores={shifter_vars=1..}] run function snc:shifters/transfer/get with storage minecraft:cart
execute if score $beast.doesnt.exists shifter_vars matches 1 if predicate snc:chance/35 unless entity @s[scores={shifter_vars=1..}] run function snc:shifters/transfer/get with storage minecraft:beast
execute if score $colossal.doesnt.exists shifter_vars matches 1 if predicate snc:chance/35 unless entity @s[scores={shifter_vars=1..}] run function snc:shifters/transfer/get with storage minecraft:colossal