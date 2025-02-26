# Rotate
execute on vehicle at @s on passengers as @s[tag=aj.jaw.root] run rotate @s ~ ~

execute if entity @s[tag=!aj.jaw.animation.charge_init.playing] run function snc:shifters/mobs/jaw/animate/charge_init
execute on vehicle run attribute @s scale base set .2
execute on vehicle at @s if block ~ ~-1 ~ #snc:tangible on passengers as @s[tag=aj.jaw.root] if function snc:shifters/mobs/jaw/animate/charge_end run return -1
execute on vehicle at @s if block ^ ^-.5 ^2 #snc:tangible on passengers as @s[tag=aj.jaw.root] run function snc:shifters/mobs/jaw/animate/charge_end

execute on vehicle on controller at @s anchored eyes positioned ^ ^ ^5.5 if entity @n[distance=..4,tag=!jaw,type=!#snc:pivot] run scoreboard players set state jaw_vars 12