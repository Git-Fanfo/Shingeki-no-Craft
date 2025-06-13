# Rotate
execute on vehicle at @s on passengers as @s[tag=aj.jaw.root] run rotate @s ~ ~

execute on vehicle at @s if block ~ ~-1 ~ #snc:tangible on passengers as @s[tag=aj.jaw.root] if function snc:shifters/mobs/jaw/animate/charge_end run return -1
execute on vehicle at @s if block ^ ^-.5 ^2 #snc:tangible on passengers as @s[tag=aj.jaw.root] run function snc:shifters/mobs/jaw/animate/charge_end

execute positioned ~ ~1 ~ on vehicle rotated as @s positioned ^ ^ ^5 positioned ~-2.5 ~-2.5 ~-2.5 if entity @n[dx=4,dy=4,dz=4,tag=!jaw,type=!#snc:pivot,predicate=!snc:shifters/jaw/score] run scoreboard players set state jaw_vars 12