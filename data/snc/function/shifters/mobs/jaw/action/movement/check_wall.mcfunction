scoreboard players set $wall jaw_vars 0
execute if block ^ ^-1 ^ #snc:tangible run scoreboard players remove $wall jaw_vars 1
execute if block ^ ^-2 ^ #snc:tangible run scoreboard players remove $wall jaw_vars 1
execute if block ^ ^1 ^1.7 #snc:tangible run scoreboard players add $wall jaw_vars 1
execute if block ^ ^ ^1.7 #snc:tangible run scoreboard players add $wall jaw_vars 1
execute if block ^ ^1 ^2.6 #snc:tangible run scoreboard players add $wall jaw_vars 1