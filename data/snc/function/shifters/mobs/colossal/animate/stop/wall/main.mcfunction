execute on vehicle rotated ~ 0 positioned ^5 ^1 ^13.5 on passengers if entity @s[tag=transform] run function snc:shifters/mobs/highlight
execute if score state colossal_vars matches 3 run function snc:shifters/mobs/colossal/animate/stop/wall/idle
execute if score state colossal_vars matches 12 if function snc:shifters/mobs/colossal/animate/steam run return -1
execute if score state colossal_vars matches 13 run function snc:shifters/mobs/colossal/animate/stop/wall/fall
execute if score state colossal_vars matches 14 run function snc:shifters/mobs/colossal/animate/stop/wall/consume
return 1