execute if score #grab beast_vars matches 1 run tp @e[tag=beast_wrap,type=!item_display,sort=nearest,limit=1] @s
execute if score #grab beast_vars matches 1 unless data entity @s Passengers rotated ~ 0 positioned ^ ^-3 ^ run function snc:shifters/mobs/beast/action/grab/ride

execute if score $area beast_vars matches 1 if score $rock beast_vars matches 1 at @s positioned ^.5 ^ ^1 run particle minecraft:block{block_state:"deepslate"} ~ ~ ~ 0 0 0 0 10 force