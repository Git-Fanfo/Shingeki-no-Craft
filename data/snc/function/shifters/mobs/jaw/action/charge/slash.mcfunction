execute if entity @s[tag=!aj.jaw.animation.charge_slash.playing] run function snc:shifters/mobs/jaw/animate/charge_slash
execute on vehicle run attribute @s scale base set .2
execute on vehicle at @s if block ~ ~-1 ~ #snc:tangible run scoreboard players set state jaw_vars 13
execute on vehicle at @s if block ^ ^-.5 ^2 #snc:tangible run scoreboard players set state jaw_vars 13