tag @s add inherit
##### HOW TO CREATE A SHIFTER #####
execute if entity @s[scores={cart_vars=1}] as @p[distance=.1..20,tag=consume] run function snc:shifters/transfer/get with storage minecraft:cart
execute if entity @s[scores={colossal_vars=1}] as @p[distance=.1..20,tag=consume] run function snc:shifters/transfer/get with storage minecraft:colossal
execute if entity @s[scores={attack_vars=1}] as @p[distance=.1..20,tag=consume] run function snc:shifters/transfer/get with storage minecraft:attack
execute if entity @s[scores={beast_vars=1}] as @p[distance=.1..20,tag=consume] run function snc:shifters/transfer/get with storage minecraft:beast

execute as @p[distance=..20,tag=consume] run function snc:titans/remove_tags