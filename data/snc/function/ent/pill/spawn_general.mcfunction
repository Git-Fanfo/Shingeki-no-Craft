### WHEN ILLAGER SPAWNS

## IF = 0
# SPAWN MARLEYAN
execute if score marley spawn matches 0 summon vindicator run function snc:ent/pill/summon/general

# Matar aldeano
tp @s ~ ~-256 ~

# añadir la tag
tag @s add marleyan
# Incrementar scoreboard
scoreboard players add marley spawn 1
#Reset matches <numero de eldianos - 1>
execute if score marley spawn matches 1 run scoreboard players set marley spawn 0