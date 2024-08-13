# Hook landed
$scoreboard players add $(name) odm_state 1

#particle minecraft:wax_off ~ ~ ~ 0 0 0 20 10 force
particle block{block_state:"dirt"} ~ ~ ~ 0 0 0 1 10 force
particle crit ~ ~ ~ 0 0 0 .4 10 force
playsound minecraft:block.iron_door.close player @a ~ ~ ~ 3.5 1.45
playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 3.5 2

tag @s add snc.wire.buried
scoreboard players set @s projectile 4
tp ^ ^ ^-.7
