execute unless predicate snc:villager/is_adult run function snc:eldia/gene/inherit/parents
execute if entity @s[tag=snc.baby,tag=eldian] if function snc:logic/kill_mob run return -1

## SPAWN VILLAGER
# If is not a child from a player
execute store result score @s[tag=!snc.baby] random run random value 1..100
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
execute if score @s shifter_vars matches ..-1 run scoreboard players operation @e[tag=snc.villager.new,sort=nearest,limit=1] shifter_vars = @s shifter_vars
##### HOW TO CREATE A SHIFTER #####
# Give shifter
execute if entity @s[tag=cart] as @n[tag=snc.villager.new] run function snc:shifters/transfer/get with storage minecraft:cart
execute if entity @s[tag=colossal] as @n[tag=snc.villager.new] run function snc:shifters/transfer/get with storage minecraft:colossal
execute if entity @s[tag=attack] as @n[tag=snc.villager.new] run function snc:shifters/transfer/get with storage minecraft:attack
execute if entity @s[tag=armor] as @n[tag=snc.villager.new] run function snc:shifters/transfer/get with storage minecraft:armor
execute if entity @s[tag=beast] as @n[tag=snc.villager.new] run function snc:shifters/transfer/get with storage minecraft:beast
execute if entity @s[tag=jaw] as @n[tag=snc.villager.new] run function snc:shifters/transfer/get with storage minecraft:jaw

## INHERIT
ride @s mount @e[tag=snc.villager.new,sort=nearest,limit=1]
function snc:eldia/gene/inherit/main

scoreboard players add eldian spawn 1
# Reset
execute if score eldian spawn matches 7 run scoreboard players set eldian spawn 0

## Kill villager
function snc:logic/kill_mob
return 1