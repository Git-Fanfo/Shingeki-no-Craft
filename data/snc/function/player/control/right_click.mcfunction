scoreboard players set @s using_carrot 0
scoreboard players set @s snc.hold.rc 5


# Impulse
execute if score @s[tag=!snc.grabbed] odm_state matches 1.. if predicate snc:odm/has_gas_trigger if predicate snc:odm/has_odm if function snc:player/odm/impulse/main run return -1
#Throw
execute if score @s[tag=!snc.grabbed,tag=!snc.injured] odm_state matches 0 if predicate snc:odm/has_gas_trigger if predicate snc:odm/has_odm run function snc:player/odm/throw/config

## Turn Titan
execute as @s[predicate=snc:shifters/has_add] run function snc:shifters/human/check_transform
execute as @s[predicate=snc:shifters/has_shifters_finder] run function snc:player/titan/shifters_finder
execute as @s[predicate=snc:shifters/has_remove] run function snc:shifters/human/check_untransform

## Give liquid
# Get Spinal from titan
execute as @s[predicate=snc:shifters/has_injection] as @e[type=#snc:hurtbox,sort=nearest,limit=1,distance=.5..4] run function snc:titans/select_blood
# Get Spinal from itself
execute as @s[predicate=snc:shifters/has_injection] if score @s shifter_vars matches 1.. unless entity @e[type=#snc:hurtbox,sort=nearest,limit=1,distance=.5..4] run function snc:player/titan/injection/extract

# Sex
execute as @s[predicate=snc:villager/has_gene] run function snc:eldia/gene/check

# Kill
execute as @s[tag=titan] run function snc:player/titan/action

# Build
execute as @s[predicate=snc:player/has_build] run function snc:player/build/select_build
# Rename
execute if predicate snc:villager/has_rename run function snc:player/build/bell/rename/main

# Shoot
execute as @s[predicate=snc:player/has_gun] anchored eyes positioned ^ ^ ^ run function snc:player/gun/select_gun

# Shoot
execute as @s[predicate=snc:player/has_config] run function snc:api/config
