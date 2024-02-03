# Deals with the physics mechanics
execute as @s[tag=body] run function snc:shifters/mobs/colossal/body/controller
execute as @s[tag=collision] run function snc:shifters/mobs/colossal/body/collision

# Pivot where the model, must be riding a tag=body entity
execute as @s[tag=pivot] run function snc:shifters/mobs/colossal/body/pivot

# Animation of the model, must be riding a tag=pivot entity
execute as @s[tag=model] run function snc:shifters/mobs/colossal/body/model

## Explosions
#execute as @s[type=armor_stand,tag=!pivot] run function snc:shifters/mobs/colossal/action/explosion/particles
execute as @s[type=armor_stand,tag=!pivot] unless predicate snc:is_riding if data entity @s {OnGround:1b} run function snc:shifters/human/explosion/radiation
execute as @s[tag=explosion] run function snc:shifters/mobs/colossal/action/explosion/particles_expansive

return 0