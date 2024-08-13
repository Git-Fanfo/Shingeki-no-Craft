scoreboard players set @s snc.odm_dist 0
execute if entity @s[tag=!snc.wire.buried] run scoreboard players add @s projectile 1
execute if entity @s[tag=snc.wire.init] run function snc:player/odm/hook/init
$execute facing entity $(name) feet run tp @s ~ ~ ~ ~-.3 ~-0.9

tag @s remove snc.wire.break

$execute if entity @s[tag=snc.wire.retract] facing entity $(name) feet run tp @s ^ ^ ^4 ~ ~
# Kill hooks
# Reached player
$execute if entity @s[tag=snc.wire.retract] if entity @p[name=$(name),distance=..0.1] run tag @s add snc.wire.kill
# Missed player
execute if entity @s[tag=snc.wire.retract] if score @s projectile matches 34.. run tag @s add snc.wire.kill
# If deatached
$execute if entity @s[tag=snc.wire.retract,tag=snc.wire.buried] as $(name) run function snc:player/odm/hook/break
# If missed hook but the other one attached
$execute if entity @s[tag=snc.wire.kill] unless score $(name) odm_state matches 2.. run scoreboard players set $(name) odm_state 0

# Get rotation
$execute if entity @s[tag=!snc.wire.retract] store result score $(name) snc.rotation_x run data get entity $(name) Rotation[0]
#$tellraw $(name) [{"score":{"name":"$(name)","objective":"snc.rotation_x"}}," ",{"score":{"name":"$(name)","objective":"snc.odm_throw_x"}}]
# Prevent cycle
$execute if entity @s[tag=!snc.wire.retract] as $(name) if score @s snc.odm_throw_x matches 135.. if score @s snc.rotation_x matches ..-1 run scoreboard players add @s snc.rotation_x 360
$execute if entity @s[tag=!snc.wire.retract] as $(name) if score @s snc.odm_throw_x matches ..-137 if score @s snc.rotation_x matches 1.. run scoreboard players remove @s snc.rotation_x 360
# Range maximum
#$tellraw $(name) [{"score":{"name":"$(name)","objective":"snc.rotation_x"}}," ",{"score":{"name":"$(name)","objective":"snc.odm_throw_x"}}]

$execute if entity @s[tag=!snc.wire.retract] store result score $(name) snc.rotation_y run data get entity $(name) Rotation[1]
## Compare snc.odm_throw with snc.rotation
$execute if entity @s[tag=!snc.wire.retract] run scoreboard players operation $(name) snc.rotation_x -= $(name) snc.odm_throw_x
$execute if entity @s[tag=!snc.wire.retract] run scoreboard players operation $(name) snc.rotation_y -= $(name) snc.odm_throw_y
#$tellraw $(name) [{"score":{"name":"$(name)","objective":"snc.rotation_x"}}," ",{"score":{"name":"$(name)","objective":"snc.odm_throw_x"}}]

$execute if entity @s[tag=!snc.wire.retract] unless score $(name) snc.rotation_x matches -43..43 run scoreboard players set @s snc.odm_dist 10
$execute if entity @s[tag=!snc.wire.retract] if score $(name) snc.rotation_y matches ..-43 run scoreboard players set @s snc.odm_dist 10

# Reset and Kill
$execute if score $(name) odm_state matches 0 run tag @s add snc.wire.kill
execute if entity @s[tag=snc.wire.kill] run function snc:logic/kill_mob

$execute if score @s projectile matches 4.. run function snc:player/odm/hook/particles {"name":$(name)}

## Land
$execute unless score $(name) odm_state matches 0 if entity @s[tag=!snc.wire.buried,tag=!snc.wire.retract,tag=!snc.wire.air] run function snc:player/odm/hook/land {"name":$(name)}
tag @s remove snc.wire.air
return 0