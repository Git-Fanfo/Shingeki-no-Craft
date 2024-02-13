execute if entity @s[tag=cart.case.barrels] run function snc:give/item/cart/barrels
execute if entity @s[tag=cart.case.turrets] run function snc:give/item/cart/turrets
execute if entity @s[tag=cart.shipload] on passengers unless entity @s[type=player] run kill
execute if entity @s[tag=cart.shipload] run kill
function snc:logic/kill_mob