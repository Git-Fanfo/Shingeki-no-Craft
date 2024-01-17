## It was a villager!
tag @s add inherit
summon villager ~ ~5 ~ {Tags:["consume"],ActiveEffects:[{Id:11,Amplifier:255b,Duration:999999,ShowParticles:0b}]}
##### HOW TO CREATE A SHIFTER #####
execute if entity @s[scores={cart_vars=1}] as @e[tag=consume,type=villager,sort=nearest,limit=1] run tag @s add cart
execute if entity @s[scores={colossal_vars=1}] as @e[tag=consume,type=villager,sort=nearest,limit=1] run tag @s add colossal
execute if entity @s[scores={attack_vars=1}] as @e[tag=consume,type=villager,sort=nearest,limit=1] run tag @s add attack
execute if entity @s[scores={beast_vars=1}] as @e[tag=consume,type=villager,sort=nearest,limit=1] run tag @s add beast
execute if entity @s[scores={armor_vars=1}] as @e[tag=consume,type=villager,sort=nearest,limit=1] run tag @s add armor

execute if score @s shifter_vars matches 1 run scoreboard players set @e[tag=consume,type=villager,sort=nearest,limit=1] shifter_vars -1
execute if score @s shifter_vars matches 2 run scoreboard players set @e[tag=consume,type=villager,sort=nearest,limit=1] shifter_vars -2
execute if score @s shifter_vars matches 3 run scoreboard players set @e[tag=consume,type=villager,sort=nearest,limit=1] shifter_vars -3
execute if score @s shifter_vars matches 4 run scoreboard players set @e[tag=consume,type=villager,sort=nearest,limit=1] shifter_vars -4
execute if score @s shifter_vars matches 5 run scoreboard players set @e[tag=consume,type=villager,sort=nearest,limit=1] shifter_vars -5

#tag @e[tag=consume,type=villager,sort=nearest,limit=1] remove consume