scoreboard players add @s projectile 1
execute unless score @s projectile matches 15.. run particle block{block_state:"redstone_block"} ~ ~.5 ~ .2 .2 .2 1 20 force
execute unless predicate snc:is_riding run function snc:titans/tangible/vomit/land