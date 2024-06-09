## Drop current items before replace
function snc:shifters/human/inventory/save/shifter with storage minecraft:beast
function snc:shifters/abilities/clear
function snc:shifters/human/inventory/spawn/shifter with storage minecraft:beast

## Gamemode
# Combat
execute if score $gamemode beast_vars matches 1 run function snc:shifters/mobs/beast/abilities/atk_5 with storage minecraft:beast

execute if score $gamemode beast_vars matches 1 if score state beast_vars matches 2 run function snc:shifters/mobs/beast/abilities/atk_1 with storage minecraft:beast
execute if score $gamemode beast_vars matches 1 unless score $hold beast_vars matches 1 run function snc:shifters/mobs/beast/abilities/atk_1 with storage minecraft:beast
execute if score $gamemode beast_vars matches 1 if score $hold beast_vars matches 1 run function snc:shifters/mobs/beast/abilities/atk_2 with storage minecraft:beast
execute if score $gamemode beast_vars matches 1 if score $hold beast_vars matches 1 run function snc:shifters/mobs/beast/abilities/atk_3 with storage minecraft:beast
execute if score $gamemode beast_vars matches 1 if score $hold beast_vars matches 1 run function snc:shifters/mobs/beast/abilities/atk_4 with storage minecraft:beast

# Utility
execute if score $gamemode beast_vars matches -1 run function snc:shifters/abilities/destroy with storage minecraft:beast

item replace entity @s[tag=transform] armor.head with carved_pumpkin[custom_model_data=60]

## Gamemode
# execute if score $gamemode beast_vars matches 1 run function snc:shifters/abilities/utility with storage minecraft:beast
# execute if score $gamemode beast_vars matches -1 run function snc:shifters/abilities/combat with storage minecraft:beast

function snc:shifters/transfer/actions with storage minecraft:beast