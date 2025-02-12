advancement revoke @s only snc:shifters/cart/drop

execute as @e[tag=aj.cart.locator.consume] run function snc:shifters/mobs/drop
scoreboard players set $hold cart_vars 0
function snc:shifters/mobs/cart/abilities/give