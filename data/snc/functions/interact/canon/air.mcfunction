scoreboard players add @s projectile 1
execute unless score @s projectile matches 25.. run particle campfire_cosy_smoke ~ ~ ~ 0 0 0 .005 1 force
execute unless predicate snc:is_riding run function snc:interact/canon/land