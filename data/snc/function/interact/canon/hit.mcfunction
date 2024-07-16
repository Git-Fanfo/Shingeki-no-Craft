playsound minecraft:entity.iron_golem.hurt player @a ~ ~1 ~ 1 1.2
particle minecraft:crit ~ ~1 ~ 0 0 0 1 40 force

scoreboard players add @s projectile 1
execute if score @s projectile matches 7.. run function snc:interact/canon/remove