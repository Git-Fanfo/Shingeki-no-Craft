execute if entity @s[tag=!aj.jaw.animation.charge_slash.playing] run function snc:shifters/mobs/jaw/animate/charge_slash
execute on vehicle run attribute @s scale base set .2
execute on vehicle at @s if block ~ ~-1 ~ #snc:tangible on passengers as @s[tag=aj.jaw.root] if function snc:shifters/mobs/jaw/animate/charge_end run return -1
execute on vehicle at @s if block ^ ^-.5 ^2 #snc:tangible on passengers as @s[tag=aj.jaw.root] run function snc:shifters/mobs/jaw/animate/charge_end