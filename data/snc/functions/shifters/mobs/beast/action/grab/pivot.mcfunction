execute if score $hold beast_vars matches 1 unless score $area beast_vars matches 1 rotated ~ 0 positioned ^ ^-3 ^ run function snc:shifters/mobs/beast/action/grab/ride

execute if score $area beast_vars matches 1 if score $rock beast_vars matches 1 rotated ~ 0 positioned ^.5 ^ ^1 run particle block deepslate ~ ~ ~ 0 0 0 0 10 force