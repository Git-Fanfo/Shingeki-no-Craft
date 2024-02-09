## Attributes
attribute @s minecraft:player.block_interaction_range base set 4.5
attribute @s minecraft:player.entity_interaction_range base set 4

##### HOW TO CREATE A SHIFTER #####
#Shifters
execute as @s[scores={cart_vars=1}] run function snc:shifters/transfer/lose with storage minecraft:cart
execute as @s[scores={colossal_vars=1}] run function snc:shifters/transfer/lose with storage minecraft:colossal
execute as @s[scores={attack_vars=1}] run function snc:shifters/transfer/lose with storage minecraft:attack
execute as @s[scores={beast_vars=1}] run function snc:shifters/transfer/lose with storage minecraft:beast
execute as @s[scores={armor_vars=1}] run function snc:shifters/transfer/lose with storage minecraft:armor
execute if score @s shifter_vars matches 1.. run function snc:shifters/human/remove

## Reset children
scoreboard players reset @s children

## Respawn
execute unless score @s dna.x matches -2147483648..2147483647 unless score @s dna.y matches -2147483648..2147483647 run function snc:eldia/respawn/natural
execute if score @s dna.x matches -2147483648..2147483647 as @e[type=villager] if score @s dna.x = @p dna.x run function snc:eldia/respawn/main {"crom":"x"}
execute if score @s dna.y matches -2147483648..2147483647 as @e[type=villager] if score @s dna.y = @p dna.y run function snc:eldia/respawn/main {"crom":"y"}
scoreboard players reset @s dna.x
scoreboard players reset @s dna.y

## Reset kills
execute if score hard config matches 1 run function snc:logic/hardcore
scoreboard players set @s death 0