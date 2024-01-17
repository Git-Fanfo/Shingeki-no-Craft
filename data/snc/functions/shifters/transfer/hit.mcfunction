## Check who ate the shifter
# If it was a Shifter, give
execute if entity @p[tag=transform,tag=consume,distance=.1..20] run function snc:shifters/transfer/inherit/player
# Nope, it wasn't a shifter. Check if its a pure titan, then check if is been controlled by a player
execute unless entity @s[tag=inherit] if entity @e[tag=ai,distance=.1..20,limit=1,sort=nearest] run function snc:shifters/transfer/inherit/titan

##### HOW TO CREATE A SHIFTER #####
execute as @s[tag=inherit,scores={cart_vars=1}] run function snc:shifters/transfer/lose with storage minecraft:cart
execute as @s[tag=inherit,scores={colossal_vars=1}] run function snc:shifters/transfer/lose with storage minecraft:colossal
execute as @s[tag=inherit,scores={attack_vars=1}] run function snc:shifters/transfer/lose with storage minecraft:attack
execute as @s[tag=inherit,scores={beast_vars=1}] run function snc:shifters/transfer/lose with storage minecraft:beast
execute as @s[tag=inherit,scores={armor_vars=1}] run function snc:shifters/transfer/lose with storage minecraft:armor