advancement revoke @s only snc:shifters/cart/hold
# Bite
scoreboard players set state cart_vars 7
scoreboard players set action cart_vars 20
# Change status
scoreboard players set $hold cart_vars 1
scoreboard players remove $energy cart_vars 5
function snc:shifters/mobs/cart/abilities/give
