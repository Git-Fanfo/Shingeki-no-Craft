## This translates if the player is not riding the camel (Mojang fix this please)
execute on passengers run ride @s dismount
ride @a[scores={cart_vars=1},tag=transform,limit=1] mount @s
ride @e[tag=pivot,tag=cart,limit=1,sort=nearest] mount @s