# Deals with the physics mechanics
execute as @s[tag=body] run function snc:shifters/mobs/cart/body/controller
execute as @s[tag=collision] run function snc:shifters/mobs/cart/body/collision

# Pivot where the model, must be riding a tag=body entity
execute as @s[tag=pivot] run function snc:shifters/mobs/cart/body/pivot

# Animation of the model, must be riding a tag=pivot entity
execute as @s[tag=model] run function snc:shifters/mobs/cart/body/model

## tp Carts
execute as @s[tag=turret] run function snc:shifters/mobs/cart/action/turret/main
#execute unless entity @a[scores={cart_vars=1},tag=transform] as @s[tag=!body] run function snc:logic/kill_mob

return 0