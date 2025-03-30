## Drop current items before replace
function snc:shifters/human/inventory/save/shifter with storage minecraft:cart
function snc:shifters/abilities/clear
function snc:shifters/human/inventory/spawn/shifter with storage minecraft:cart
function snc:shifters/transfer/spaces
## Gamemode
# Combat
execute if score $gamemode cart_vars matches 1 run function snc:shifters/mobs/cart/abilities/atk_5 with storage minecraft:cart
execute if score $gamemode cart_vars matches 1 run function snc:shifters/mobs/cart/abilities/atk_2 with storage minecraft:cart
execute if score $gamemode cart_vars matches 1 unless score $hold cart_vars matches 1 run function snc:shifters/mobs/cart/abilities/atk_1 with storage minecraft:cart
execute if score $gamemode cart_vars matches 1 if score $hold cart_vars matches 1 run function snc:shifters/mobs/cart/abilities/atk_3 with storage minecraft:cart

# Utility
execute unless score #farm cart_vars matches -10.. run scoreboard players set #farm cart_vars -1
execute unless score #harvest cart_vars matches -10.. run scoreboard players set #harvest cart_vars -1
execute if score $gamemode cart_vars matches -1 run function snc:shifters/abilities/farm with storage minecraft:cart
execute if score $gamemode cart_vars matches -1 run function snc:shifters/abilities/harvest with storage minecraft:cart

function snc:shifters/mobs/cart/head {"frame":1}

## Gamemode
execute if score $survival config matches 1 if score $gamemode cart_vars matches 1 run function snc:shifters/abilities/utility with storage minecraft:cart
execute if score $survival config matches 1 if score $gamemode cart_vars matches -1 run function snc:shifters/abilities/combat with storage minecraft:cart

function snc:shifters/transfer/actions with storage minecraft:cart