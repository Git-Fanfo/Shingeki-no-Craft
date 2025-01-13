## Debug
#$function snc:logic/distance {"distance":$(distance),"half_minus_zero_point_five":$(half_minus_zero_point_five)}

## Play sound
$execute if entity @e[distance=..$(distance),tag=!$(shifter),type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] run playsound $(sound) player @a ~ ~ ~ 3

## Damage
$execute as @e[distance=..$(distance),tag=!$(shifter),type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] run damage @s $(damage) player_attack by @p[scores={$(shifter)_vars=1}]
## Knockback
# Summon snowball
$execute as @e[distance=..$(distance),tag=transform,type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] on vehicle unless predicate snc:is_riding at @s anchored feet positioned ^ ^.5 ^ run function snc:logic/apply_motion/knockback/summon {"knockback":$(knockback)}
# Set direction
$execute if entity @e[distance=..$(distance),tag=transform,type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] run data modify entity @e[type=snowball,tag=snc.knockback,tag=not_mov,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
$execute if entity @e[distance=..$(distance),tag=transform,type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] run data modify entity @e[type=snowball,tag=snc.knockback,tag=not_mov,sort=nearest,limit=1] Rotation[1] set value $(angle)f

$effect give @e[distance=..$(distance),tag=hurtbox] water_breathing 1 0 true

## Remove Energy
$scoreboard players remove $energy $(shifter)_vars $(energy)