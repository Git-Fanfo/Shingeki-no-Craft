scoreboard players set @s snc.odm_dist 0
execute if entity @s[tag=!snc.hook.buried] run scoreboard players add @s projectile 1

$execute if entity @s[tag=snc.R] facing entity $(name) feet \
    run tp @s ~ ~ ~ ~-.3 ~-0.9
$execute if entity @s[tag=snc.L] facing entity $(name) feet \
    run tp @s ~ ~ ~ ~.3 ~-0.9
tag @s remove snc.hook.break

$execute if entity @s[tag=snc.hook.retract] facing entity $(name) feet run tp @s ^ ^ ^3.5 ~ ~-1.1
# Kill hooks
# Reached player
$execute if entity @s[tag=snc.hook.retract] if entity @p[name=$(name),distance=..4] run tag @s add snc.hook.kill
# Missed player
execute if entity @s[tag=snc.hook.retract] if score @s projectile matches 40.. run tag @s add snc.hook.kill
# If deatached
$execute if entity @s[tag=snc.hook.retract,tag=snc.hook.buried] as $(name) run function snc:player/odm/hook/break
# If missed hook but the other one attached
$execute if entity @s[tag=snc.hook.kill] unless score $(name) odm_state matches 2.. run scoreboard players set $(name) odm_state 0
# Get rotation
$execute if entity @s[tag=!snc.hook.retract] store result score $(name) snc.rotation_x run data get entity $(name) Rotation[0]
$execute if entity @s[tag=!snc.hook.retract] as $(name) if score @s snc.rotation_x matches ..-1 run scoreboard players operation @s snc.rotation_x *= #-1 constant

$execute if entity @s[tag=!snc.hook.retract] store result score $(name) snc.rotation_y run data get entity $(name) Rotation[1]
## Compare snc.odm_throw with snc.rotation

$execute if entity @s[tag=!snc.hook.retract] run scoreboard players operation $(name) snc.rotation_x -= $(name) snc.odm_throw_x
$execute if entity @s[tag=!snc.hook.retract] run scoreboard players operation $(name) snc.rotation_y -= $(name) snc.odm_throw_y
# Range maximum
#$tellraw $(name) {"score":{"name":"$(name)","objective":"snc.rotation_x"}}
$execute if entity @s[tag=!snc.hook.retract] unless score $(name) snc.rotation_x matches -45..45 run scoreboard players set @s snc.odm_dist 40
$execute if entity @s[tag=!snc.hook.retract] if score $(name) snc.rotation_y matches ..-40 run scoreboard players set @s snc.odm_dist 40

# Reset and Kill
$execute if score $(name) odm_state matches 0 run tag @s add snc.hook.kill
execute if entity @s[tag=snc.hook.kill] run kill

execute if score @s projectile matches 1 run data modify entity @s transformation.scale set value [0.25f,0.25f,1f]
execute if score @s projectile matches 2 run data modify entity @s transformation.scale set value [0.25f,0.25f,2f]
execute if score @s projectile matches 3 run data modify entity @s transformation.scale set value [0.25f,0.25f,3f]
execute if score @s projectile matches 4 run data modify entity @s transformation.scale set value [0.25f,0.25f,4f]
$function snc:player/odm/hook/particles {"name":$(name)}

## Land
execute if entity @s[tag=!snc.hook.buried] on vehicle run function snc:player/odm/hook/air
$execute unless score $(name) odm_state matches 0 if entity @s[tag=!snc.hook.buried,tag=!snc.hook.retract] unless predicate snc:is_riding run function snc:player/odm/hook/land {"name":$(name)}

return 0