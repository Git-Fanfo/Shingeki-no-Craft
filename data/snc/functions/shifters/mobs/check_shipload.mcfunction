execute if entity @s[tag=cart.case.barrels] as @p[scores={cart_vars=1}] run function snc:api/give/shifters/titans/cart/barrels
execute if entity @s[tag=cart.case.turrets] as @p[scores={cart_vars=1}] run function snc:api/give/shifters/titans/cart/turrets
execute if entity @s[tag=cart.shipload] on passengers unless entity @s[type=player] run kill
execute if entity @s[tag=cart.shipload] run kill
function snc:logic/kill_mob