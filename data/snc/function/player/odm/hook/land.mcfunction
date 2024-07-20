# Hook landed
$scoreboard players add $(name) odm_state 1

#particle minecraft:wax_off ~ ~ ~ 0 0 0 20 10 force
particle block{block_state:"dirt"} ~ ~ ~ 0 0 0 1 10 force
particle crit ~ ~ ~ 0 0 0 .2 5 force
playsound minecraft:block.iron_door.close player @a ~ ~ ~ 3 1.45
playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 3 2

tag @s add snc.hook.buried
tp ^ ^ ^-.7
