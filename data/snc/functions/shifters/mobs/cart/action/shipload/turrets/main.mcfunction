$tp ^$(x) ^$(y) ^$(z)

$scoreboard players set $turret.$(turret) cart_vars 0
$execute on passengers if entity @s[type=player] run scoreboard players set $turret.$(turret) cart_vars 1

$execute if score ticks clock matches 17 if score $turret.$(turret) cart_vars matches 0 on passengers run data merge entity @s {Rotation:[$(rotate)f,22f]}