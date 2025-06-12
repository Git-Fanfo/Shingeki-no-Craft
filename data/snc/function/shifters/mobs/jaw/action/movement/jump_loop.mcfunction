scoreboard players set $wall jaw_vars 0
execute rotated ~ 0 if block ^ ^1 ^1.7 #snc:tangible run scoreboard players add $wall jaw_vars 1
execute rotated ~ 0 if block ^ ^ ^1.7 #snc:tangible run scoreboard players add $wall jaw_vars 1
execute rotated ~ 0 if block ^ ^1 ^2.6 #snc:tangible run scoreboard players add $wall jaw_vars 1
execute if score $wall jaw_vars matches 1..3 run scoreboard players set state jaw_vars 5

execute if score state jaw_vars matches 6 if score $air jaw_vars matches 0 run function snc:shifters/mobs/jaw/animate/jump_end