##### HOW TO CREATE A SHIFTER #####
execute if score @s shifter_vars matches 1 run scoreboard players set @p[distance=.1..20,tag=consume] shifter_vars 1
execute if score @s shifter_vars matches 2 run scoreboard players set @p[distance=.1..20,tag=consume] shifter_vars 2
execute if score @s shifter_vars matches 3 run scoreboard players set @p[distance=.1..20,tag=consume] shifter_vars 3
execute if score @s shifter_vars matches 4 run scoreboard players set @p[distance=.1..20,tag=consume] shifter_vars 4
execute if score @s shifter_vars matches 5 run scoreboard players set @p[distance=.1..20,tag=consume] shifter_vars 5

function snc:shifters/transfer/inherit/player