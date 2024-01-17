#> snc:titans/spawn
# Spawns 1 ore more pure titan in the world
#
# @input
#   Runs every second with a 20% of chance
#
# @output
#   1..4 pure titans
execute if score $titn_spwn_rate config matches 1..3 run summon pig ~ ~20 ~ {Silent:1b,Invulnerable:1b,NoAI:1b}
execute if score $titn_spwn_rate config matches 1..3 if predicate snc:chance/70 run summon pig ~ ~20 ~ {Silent:1b,Invulnerable:1b,NoAI:1b}
execute if score $titn_spwn_rate config matches 2..3 if predicate snc:chance/60 run summon pig ~ ~20 ~ {Silent:1b,Invulnerable:1b,NoAI:1b}
execute if score $titn_spwn_rate config matches 3 if predicate snc:chance/30 run summon pig ~ ~20 ~ {Silent:1b,Invulnerable:1b,NoAI:1b}

# Spread the spawners if there's no titan nearby
spreadplayers ~ ~ 25 64 false @e[type=pig, tag=!not_titan,sort=nearest,limit=4]