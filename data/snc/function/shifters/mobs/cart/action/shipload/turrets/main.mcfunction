$tp ^$(x) ^$(y) ^$(z)

execute on passengers rotated as @s[type=player] on vehicle run rotate @s ~ ~

$scoreboard players set $turret.$(turret) cart_vars 0
$execute on passengers if entity @s[type=player] run scoreboard players set $turret.$(turret) cart_vars 1
execute on passengers run effect give @s[type=player] resistance 2 2 true
execute if score ticks clock matches 11 on passengers run effect give @s[type=player] regeneration 3 1 true

$execute if score $turret.$(turret) cart_vars matches 0 run scoreboard players operation @s snc.rotation_x = player_rotation cart_vars
$execute if score $turret.$(turret) cart_vars matches 0 run scoreboard players operation @s snc.rotation_x += #$(rotate) constant
$execute if score $turret.$(turret) cart_vars matches 0 store result entity @s Rotation[0] float 1 run scoreboard players get @s snc.rotation_x
$execute if score $turret.$(turret) cart_vars matches 0 run data modify entity @s Rotation[1] set value 22f