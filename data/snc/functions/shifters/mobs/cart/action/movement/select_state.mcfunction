# 100 Range
# 10 Walking bool
# 1 Status

# If not walking in floor / idle on floor no jumping
execute if score state cart_vars matches 3 if score on_floor cart_vars matches 1 run scoreboard players set turret_state cart_vars 101
# If jumping no walking / idle no floor jumping
execute if score state cart_vars matches 5 run scoreboard players set turret_state cart_vars 102
# If falling no walking / idle no floor falling
execute if score state cart_vars matches 3 if score on_floor cart_vars matches 0 run scoreboard players set turret_state cart_vars 103
# If resting
execute if score state cart_vars matches 2 run scoreboard players set turret_state cart_vars 104

# If walking in floor
execute if score state cart_vars matches 4 if score on_floor cart_vars matches 1 run scoreboard players set turret_state cart_vars 111
# If jumping and walking
execute if score state cart_vars matches 5 if predicate snc:is_sprinting run scoreboard players set turret_state cart_vars 112
# If falling and walking
execute if score state cart_vars matches 4 if score on_floor cart_vars matches 0 run scoreboard players set turret_state cart_vars 113