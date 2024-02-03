function snc:shifters/mobs/colossal/action/movement/check_height
execute unless score terrain colossal_vars matches 9.. unless block ~ ~-59 ~ #snc:filter_shifter on passengers if entity @s[type=player] run function snc:shifters/mobs/colossal/action/movement/mojang
execute unless score terrain colossal_vars matches 9.. unless block ~ ~-59 ~ #snc:filter_shifter on passengers if entity @s[type=player] run tp @s ~ ~.5 ~
execute unless score terrain colossal_vars matches 9.. unless block ~ ~-59 ~ #snc:filter_shifter run tp @s ~ ~.5 ~

execute unless score terrain colossal_vars matches 9.. rotated ~ 0 positioned ^ ^-60 ^2 unless block ~ ~ ~ #snc:filter_shifter run fill ~ ~60 ~ ~ ~60 ~ barrier replace air
execute unless score terrain colossal_vars matches 9.. rotated ~ 0 positioned ^2 ^-60 ^ unless block ~ ~ ~ #snc:filter_shifter run fill ~ ~60 ~ ~ ~60 ~ barrier replace air
execute unless score terrain colossal_vars matches 9.. rotated ~ 0 positioned ^-2 ^-60 ^ unless block ~ ~ ~ #snc:filter_shifter run fill ~ ~60 ~ ~ ~60 ~ barrier replace air