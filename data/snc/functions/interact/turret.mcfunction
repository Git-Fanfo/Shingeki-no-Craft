$execute if score $turret.$(turret) cart_vars matches 0 on target run ride @s mount @e[tag=cart.turret.$(turret),sort=nearest,limit=1]

execute on target at @s anchored eyes positioned ^ ^ ^ run function snc:shifters/mobs/cart/action/shipload/turrets/shoot

data remove entity @s interaction