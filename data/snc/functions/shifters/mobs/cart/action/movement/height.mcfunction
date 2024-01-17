# Detect floor
execute if block ~ ~-4 ~ #snc:filter_shifter run scoreboard players set on_floor cart_vars 0
execute unless block ~ ~-4 ~ #snc:filter_shifter run scoreboard players set on_floor cart_vars 1

execute unless block ~ ~-2 ~ #snc:filter_shifter on passengers if entity @s[type=player] run function snc:shifters/mobs/cart/action/movement/mojang
execute unless block ~ ~-2 ~ #snc:filter_shifter on passengers if entity @s[type=player] run tp @s ~ ~.5 ~
execute unless block ~ ~-2 ~ #snc:filter_shifter run tp @s ~ ~.5 ~

execute rotated ~ 0 positioned ^ ^-3 ^2 unless block ~ ~ ~ #snc:filter_shifter run fill ~ ~3 ~ ~ ~3 ~ barrier replace air
execute rotated ~ 0 positioned ^2 ^-3 ^ unless block ~ ~ ~ #snc:filter_shifter run fill ~ ~3 ~ ~ ~3 ~ barrier replace air
execute rotated ~ 0 positioned ^-2 ^-3 ^ unless block ~ ~ ~ #snc:filter_shifter run fill ~ ~3 ~ ~ ~3 ~ barrier replace air
