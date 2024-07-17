# #SELECTORS
# Player effects
## execute as @s[type=player] run function snc:player/seconds

# Regen Titan
## execute as @s[tag=ai] run function snc:titans/ai/seconds

# Scan when a mob spawns
execute as @s[type=pillager,tag=!marleyan] run function snc:ent/pill/spawn_soldier
execute as @s[type=vindicator,tag=!marleyan] run function snc:ent/pill/spawn_general
execute as @s[type=ravager,tag=!marleyan] run function snc:ent/pill/vehicle/spawn

# Village
execute as @s[tag=village] run function snc:eldia/village
# Kill villager
execute as @s[type=armor_stand,tag=body] unless predicate snc:is_riding run function snc:logic/kill_mob