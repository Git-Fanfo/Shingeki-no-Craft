## add_tags -> Only applies this shifter / select_shifter is a shared ability
execute unless predicate snc:shifters/has_remove run playsound block.beacon.power_select player @s ~ ~ ~ 1 2
execute if predicate snc:shifters/has_remove run playsound block.beacon.deactivate player @s ~ ~ ~ 1 2

$scoreboard players remove $energy $(shifter)_vars $(energy_attack)

## Colossal
# Wallbreaker
execute as @s[predicate=snc:shifters/colossal/atk_2] run function snc:shifters/mobs/colossal/action/wallbreaker/init

# Heatwave
execute as @s[predicate=snc:shifters/colossal/atk_3] run function snc:shifters/mobs/colossal/action/steam/init

# Jaw
execute as @s[predicate=snc:shifters/colossal/atk_4] run function snc:shifters/mobs/colossal/action/jaw/init

## Cart
# Slam
execute as @s[predicate=snc:shifters/cart/atk_3] run function snc:shifters/mobs/cart/action/slam/init

# Jaw
execute as @s[predicate=snc:shifters/cart/atk_5] unless score consume cart_vars matches 0.. run function snc:shifters/mobs/cart/action/jaw/init

# Shipload
execute if predicate snc:shifters/cart/shipload run function snc:shifters/mobs/cart/action/shipload/module

## Attack
# Block
execute as @s[predicate=snc:shifters/attack/atk_1] run scoreboard players set state attack_vars 19

# Punch
execute as @s[predicate=snc:shifters/attack/atk_2] run scoreboard players set state attack_vars 12

# Knee
execute as @s[predicate=snc:shifters/attack/atk_3] run scoreboard players set state attack_vars 16

# Jaw
execute as @s[predicate=snc:shifters/attack/atk_4] unless score consume attack_vars matches 0.. run function snc:shifters/mobs/attack/action/jaw/add_tags

## Beast
# Grab
execute as @s[predicate=snc:shifters/beast/atk_1] run scoreboard players set state beast_vars 12
# Release Grab
execute as @s[predicate=snc:shifters/beast/atk_2] run function snc:shifters/mobs/beast/action/grab/end
# Big
execute as @s[predicate=snc:shifters/beast/atk_3] run scoreboard players set state beast_vars 13
# Area
execute as @s[predicate=snc:shifters/beast/atk_4] run scoreboard players set state beast_vars 14
# Jaw
execute as @s[predicate=snc:shifters/beast/atk_5] unless score consume beast_vars matches 0.. run function snc:shifters/mobs/beast/action/jaw/add_tags

## Armor
# Charge
execute as @s[predicate=snc:shifters/armor/atk_1] run scoreboard players set state armor_vars 11
execute as @s[predicate=snc:shifters/armor/atk_2] run scoreboard players set state armor_vars 13