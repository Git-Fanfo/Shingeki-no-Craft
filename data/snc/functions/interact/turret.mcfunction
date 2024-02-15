data remove entity @s interaction
$execute if score $turret.$(turret) cart_vars matches 0 run ride @p[tag=!transform] mount @s 

execute on passengers if entity @s[type=player] at @s anchored eyes positioned ^ ^ ^ run function snc:shifters/mobs/cart/action/shipload/turrets/shoot