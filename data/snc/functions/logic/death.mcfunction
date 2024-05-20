## Attributes
attribute @s minecraft:player.block_interaction_range base set 4.5
attribute @s minecraft:player.entity_interaction_range base set 4

## Shifters
execute if score @s shifter_vars matches 1.. run function snc:shifters/function/multiple {"pre":"function snc:shifters/transfer/lose with storage minecraft:","post":""}
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