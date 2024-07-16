## It was a villager!
tag @s add snc.inherit
summon villager ~ ~5 ~ {Tags:["consume"],ActiveEffects:[{Id:11,Amplifier:255b,Duration:999999,ShowParticles:0b}]}
##### HOW TO CREATE A SHIFTER #####
# Transfer Main
execute if score @s shifter_vars matches 1 run scoreboard players set @e[tag=consume,type=villager,sort=nearest,limit=1] shifter_vars -1
execute if score @s shifter_vars matches 2 run scoreboard players set @e[tag=consume,type=villager,sort=nearest,limit=1] shifter_vars -2
execute if score @s shifter_vars matches 3 run scoreboard players set @e[tag=consume,type=villager,sort=nearest,limit=1] shifter_vars -3
execute if score @s shifter_vars matches 4 run scoreboard players set @e[tag=consume,type=villager,sort=nearest,limit=1] shifter_vars -4
execute if score @s shifter_vars matches 5 run scoreboard players set @e[tag=consume,type=villager,sort=nearest,limit=1] shifter_vars -5
# Transfter Passives
execute if score @s cart_vars matches 1 run function snc:shifters/transfer/remove/villager {"shifter":"cart"}
execute if score @s colossal_vars matches 1 run function snc:shifters/transfer/remove/villager {"shifter":"colossal"}
execute if score @s attack_vars matches 1 run function snc:shifters/transfer/remove/villager {"shifter":"attack"}
execute if score @s beast_vars matches 1 run function snc:shifters/transfer/remove/villager {"shifter":"beast"}
execute if score @s armor_vars matches 1 run function snc:shifters/transfer/remove/villager {"shifter":"armor"}

#tag @e[tag=consume,type=villager,sort=nearest,limit=1] remove consume