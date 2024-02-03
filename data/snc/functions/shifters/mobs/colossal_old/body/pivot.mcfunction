## Rotate model
execute store result score rotation colossal_vars run data get entity @s Rotation[0]
scoreboard players operation rotation colossal_vars -= player_rotation colossal_vars

# Rotate quaternion
execute unless score rotation colossal_vars matches -20..20 on passengers run function snc:shifters/mobs/colossal/body/rotate

# Rotate pivot
execute unless score rotation colossal_vars matches -20..20 run data modify entity @s Rotation[0] set from entity @a[scores={colossal_vars=1},tag=transform,limit=1] Rotation[0]

#data modify entity @s Pose.Head[0] set from entity @a[scores={colossal_vars=1},tag=transform,limit=1] Rotation[1]