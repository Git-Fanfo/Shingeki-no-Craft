advancement revoke @s only snc:shifters/beast/bite
# Nothing Found
execute unless score state beast_vars matches 2 run scoreboard players set state beast_vars 7
# Bite while Sneak
execute if score state beast_vars matches 2 on vehicle rotated ~ 0 positioned ^ ^-1.7 ^4 if entity @e[distance=..3,type=#snc:human,tag=!transform,predicate=!snc:shifters/beast/score] on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/animate/consume
# Regular Bite
execute on vehicle on passengers if entity @s[type=item_display] if score state beast_vars matches 2 if entity @s[tag=!aj.beast.animation.consume.playing] on vehicle on controller run function snc:shifters/mobs/sight