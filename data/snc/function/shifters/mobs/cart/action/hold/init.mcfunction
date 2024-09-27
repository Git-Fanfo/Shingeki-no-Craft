scoreboard players set $hold cart_vars 1
scoreboard players set consume cart_vars 20
tag @s add snc.bite
scoreboard players remove $energy cart_vars 5

function snc:shifters/mobs/cart/abilities/give
return 1