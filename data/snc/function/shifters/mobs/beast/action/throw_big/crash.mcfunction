execute unless block ~2.5 ~ ~2.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~1.5 ~ ~2.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~0.5 ~ ~2.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-0.5 ~ ~2.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-1.5 ~ ~2.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-2.5 ~ ~2.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1

execute unless block ~2.5 ~ ~1.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~1.5 ~ ~1.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~0.5 ~ ~1.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-0.5 ~ ~1.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-1.5 ~ ~1.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-2.5 ~ ~1.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1

execute unless block ~2.5 ~ ~0.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~1.5 ~ ~0.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~0.5 ~ ~0.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-0.5 ~ ~0.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-1.5 ~ ~0.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-2.5 ~ ~0.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1

execute unless block ~2.5 ~ ~-0.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~1.5 ~ ~-0.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~0.5 ~ ~-0.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-0.5 ~ ~-0.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-1.5 ~ ~-0.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-2.5 ~ ~-0.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1

execute unless block ~2.5 ~ ~-1.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~1.5 ~ ~-1.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~0.5 ~ ~-1.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-0.5 ~ ~-1.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-1.5 ~ ~-1.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-2.5 ~ ~-1.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1

execute unless block ~2.5 ~ ~-2.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~1.5 ~ ~-2.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~0.5 ~ ~-2.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-0.5 ~ ~-2.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-1.5 ~ ~-2.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1
execute unless block ~-2.5 ~ ~-2.5 #snc:filter_shifter run scoreboard players add @s beast_vars 1

execute if score @s beast_vars matches 1.. if predicate snc:chance/50 run playsound minecraft:block.glass.break block @a ~ ~ ~ 6 2
execute if score @s beast_vars matches 1.. run playsound ancient_debris.break block @a ~ ~ ~ 6 2

execute if score @s beast_vars matches 1.. run particle campfire_cosy_smoke ~ ~ ~ 1.5 1.5 1.5 .02 50 force
#execute unless score @s beast_vars matches 30.. run fill ~2.5 ~2.5 ~2.5 ~-2.5 ~-.5 ~-2.5 air destroy

scoreboard players add @s projectile 1

execute if score @s projectile matches 20.. unless score @s beast_vars matches 35.. run fill ~1.5 ~2.5 ~1.5 ~-1.5 ~-1.5 ~-1.5 air destroy
execute if score @s projectile matches 20.. unless score @s beast_vars matches 35.. run fill ~2.5 ~1.5 ~1.5 ~-2.5 ~-.5 ~-1.5 air destroy
execute if score @s projectile matches 20.. unless score @s beast_vars matches 35.. run fill ~1.5 ~1.5 ~2.5 ~-1.5 ~-.5 ~-2.5 air destroy

execute if score @s beast_vars matches 35.. on vehicle run kill