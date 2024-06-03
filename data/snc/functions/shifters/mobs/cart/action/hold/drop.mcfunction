execute as @e[tag=aj.cart.locator.consume] on passengers run attribute @s generic.scale base set 1
execute as @e[tag=aj.cart.locator.consume] on passengers if entity @s[type=#snc:villager] on passengers run attribute @s generic.scale base set 1
execute as @e[tag=aj.cart.locator.consume] on passengers run ride @s dismount
scoreboard players set $hold cart_vars 0