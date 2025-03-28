## Attribute
attribute @s minecraft:block_interaction_range base set 4.5
attribute @s minecraft:entity_interaction_range base set 4
attribute @s minecraft:scale base set 1

## Shifters
execute if score @s shifter_vars matches 1.. run function snc:shifters/function/multiple {"pre":"function snc:shifters/transfer/lose with storage minecraft:","post":""}
execute if score @s shifter_vars matches 1.. run function snc:shifters/human/remove
execute if entity @s[tag=snc.handcuffs] run function snc:interact/handcuffs/player/remove

## Reset children
scoreboard players reset @s children

## Respawn
execute unless entity @s[tag=snc.reborn] unless score @s dna.x matches -2147483648..2147483647 unless score @s dna.y matches -2147483648..2147483647 run function snc:eldia/respawn/natural
tag @s add snc.reborn

execute if score @s dna.x matches -2147483648..2147483647 as @e[type=villager] if score @s dna.x = @p dna.x run function snc:eldia/respawn/main {"crom":"x"}
execute if score @s dna.y matches -2147483648..2147483647 as @e[type=villager] if score @s dna.y = @p dna.y run function snc:eldia/respawn/main {"crom":"y"}
scoreboard players reset @s dna.x
scoreboard players reset @s dna.y

## Reset kills
execute if score hard config matches 1 run function snc:logic/hardcore
scoreboard players set @s death 0