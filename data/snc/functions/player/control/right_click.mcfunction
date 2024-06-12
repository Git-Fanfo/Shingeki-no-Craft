scoreboard players set @s using_carrot 0
scoreboard players set @s snc.hold.rc 5

#Throw
execute as @s[tag=!wrap,scores={odm_state=0,man_cool=0},predicate=snc:odm/has_gas_trigger,predicate=snc:odm/has_odm] run function snc:player/odm/throw

# Impulse
execute as @s[tag=!wrap,scores={odm_state=1..},predicate=snc:odm/has_gas_trigger,predicate=snc:odm/has_odm] run function snc:player/odm/impulse

## Turn Titan
execute as @s[predicate=snc:shifters/has_add] run function snc:shifters/human/trigger/main
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
