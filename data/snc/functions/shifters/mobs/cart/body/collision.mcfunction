effect give @s invisibility infinite 0 true
effect give @s resistance infinite 5 true
effect give @s fire_resistance infinite 0 true

# Apply damage then carrier is hurt
execute if predicate snc:is_hurt run damage @p[scores={cart_vars=1}] 5 minecraft:player_attack

execute at @p[scores={cart_vars=1},tag=transform] rotated ~ 0 run tp @s ^ ^-1.5 ^-3.5
execute if score state cart_vars matches 0 run function snc:logic/kill_mob