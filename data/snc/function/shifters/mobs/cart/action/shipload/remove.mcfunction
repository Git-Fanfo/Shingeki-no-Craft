execute as 0000007f-0000-007f-0000-008100000001 if entity @s[tag=cart.case.barrels] as @p[scores={cart_vars=1}] run function snc:api/give/shifters/titans/cart/barrels
execute as 0000007f-0000-007f-0000-008100000001 if entity @s[tag=cart.case.turrets] as @p[scores={cart_vars=1}] run function snc:api/give/shifters/titans/cart/turrets
kill 0000007f-0000-007f-0000-008100000001

execute as 0000007f-0000-007f-0000-008200000001 run function snc:shifters/mobs/cart/action/shipload/kill
execute as 0000007f-0000-007f-0000-008300000001 run function snc:shifters/mobs/cart/action/shipload/kill
execute as 0000007f-0000-007f-0000-008400000001 run function snc:shifters/mobs/cart/action/shipload/kill
execute as 0000007f-0000-007f-0000-008500000001 run function snc:shifters/mobs/cart/action/shipload/kill

return 1