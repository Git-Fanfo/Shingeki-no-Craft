scoreboard players add @s projectile 1
execute unless score @s projectile matches 10.. run particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0 1 force
execute unless predicate snc:is_riding_projectile run function snc:interact/canon/land