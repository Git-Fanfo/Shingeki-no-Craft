## SPAWN ELDIAN
# If is not a child from a player
execute store result score @s[tag=!snc.dna.x,tag=!snc.dna.y] random run random value 1..100
execute if score eldian spawn matches 0 if score @s random matches 1..20 run function snc:logic/quest/alma/summon
execute if score eldian spawn matches 0 if score @s random matches 21..40 run function snc:logic/quest/julian/summon
execute if score eldian spawn matches 0 if score @s random matches 41.. run function snc:logic/quest/bob/summon
# Spawn npc
execute if score eldian spawn matches 0 unless score @s random matches 1.. run function snc:eldia/villager/summon/levin
execute if score eldian spawn matches 1 run function snc:eldia/villager/summon/ann
execute if score eldian spawn matches 2 run function snc:eldia/villager/summon/emma
execute if score eldian spawn matches 3 run function snc:eldia/villager/summon/levin
execute if score eldian spawn matches 4 run function snc:eldia/villager/summon/hannah
execute if score eldian spawn matches 5 run function snc:eldia/villager/summon/marie
execute if score eldian spawn matches 6 run function snc:eldia/villager/summon/dave

# If spawned as a shifter then asign value
execute if score @s shifter_vars matches ..-1 run scoreboard players operation @e[tag=head,tag=eldian,sort=nearest,limit=1] shifter_vars = @s shifter_vars
##### HOW TO CREATE A SHIFTER #####
# Give shifter
execute if entity @s[tag=cart] run execute as @e[tag=head,tag=eldian,sort=nearest,limit=1] run function snc:shifters/transfer/get with storage minecraft:cart
execute if entity @s[tag=colossal] run execute as @e[tag=head,tag=eldian,sort=nearest,limit=1] run function snc:shifters/transfer/get with storage minecraft:colossal
execute if entity @s[tag=attack] run execute as @e[tag=head,tag=eldian,sort=nearest,limit=1] run function snc:shifters/transfer/get with storage minecraft:attack
execute if entity @s[tag=armor] run execute as @e[tag=head,tag=eldian,sort=nearest,limit=1] run function snc:shifters/transfer/get with storage minecraft:armor
execute if entity @s[tag=beast] run execute as @e[tag=head,tag=eldian,sort=nearest,limit=1] run function snc:shifters/transfer/get with storage minecraft:beast

## INHERIT
ride @s mount @e[tag=head,tag=!snc.init,sort=nearest,limit=1]
function snc:eldia/gene/inherit/main

# Add tag
tag @s add not_eldian
scoreboard players add eldian spawn 1
# Reset
execute if score eldian spawn matches 7 run scoreboard players set eldian spawn 0

# Kill villager
function snc:logic/kill_mob