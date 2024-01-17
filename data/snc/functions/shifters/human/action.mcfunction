## add_tags -> Only applies this shifter / select_shifter is a shared ability
execute unless predicate snc:has_remove run playsound block.beacon.power_select player @s ~ ~ ~ 1 2
execute if predicate snc:has_remove run playsound block.beacon.deactivate player @s ~ ~ ~ 1 2

## Crouch
execute as @s[predicate=snc:has_crouch] run function snc:shifters/select_crouch

## Colossal
# Wallbreaker
execute as @s[predicate=snc:has_colossal_atk_2] run function snc:shifters/mobs/colossal/action/wallbreaker/add_tags

# Heatwave
execute as @s[predicate=snc:has_colossal_atk_3] run function snc:shifters/mobs/colossal/action/steam/select_shifter

# Jaw
execute as @s[predicate=snc:has_colossal_atk_4] run function snc:shifters/mobs/colossal/action/jaw/add_tags

## Cart
# Slam
execute as @s[predicate=snc:cart/has_atk_3] run function snc:shifters/mobs/cart/action/slam/add_tags

# Jaw
execute as @s[predicate=snc:cart/has_atk_5] unless score consume cart_vars matches 0.. run function snc:shifters/mobs/cart/action/jaw/add_tags

# Metal
execute as @s[predicate=snc:cart/has_atk_6] run function snc:shifters/mobs/cart/action/metal/select_shifter

## Attack
# Block
execute as @s[predicate=snc:attack/has_atk_1] run scoreboard players set state attack_vars 19

# Punch
execute as @s[predicate=snc:attack/has_atk_2] run scoreboard players set state attack_vars 12

# Knee
execute as @s[predicate=snc:attack/has_atk_3] run scoreboard players set state attack_vars 16

# Jaw
execute as @s[predicate=snc:attack/has_atk_4] unless score consume attack_vars matches 0.. run function snc:shifters/mobs/attack/action/jaw/add_tags
execute as @s[predicate=snc:attack/has_atk_4] unless score consume attack_vars matches 0.. run say a

## Beast
execute as @s[predicate=snc:beast/has_atk_1] run scoreboard players set state beast_vars 12

execute as @s[predicate=snc:beast/has_atk_2] run function snc:shifters/mobs/beast/action/grab/end

execute as @s[predicate=snc:beast/has_atk_3] run scoreboard players set state beast_vars 13

execute as @s[predicate=snc:beast/has_atk_4] run scoreboard players set state beast_vars 14

execute as @s[predicate=snc:beast/has_atk_5] unless score consume beast_vars matches 0.. run function snc:shifters/mobs/beast/action/jaw/add_tags