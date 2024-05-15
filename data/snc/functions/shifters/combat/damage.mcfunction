## Debug
# $function snc:logic/distance {"distance":$(distance),"half_minus_zero_point_five":$(half_minus_zero_point_five)}

## Play sound
$execute if entity @e[distance=..$(distance),tag=!$(shifter),type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] run playsound $(sound) player @a ~ ~ ~ 3

## Damage
$execute as @e[distance=..$(distance),tag=!$(shifter),type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] run damage @s $(damage) player_attack by @p[scores={$(shifter)_vars=1}]
# $say $(damage)
$execute as @e[distance=..$(distance),tag=transform,type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] on vehicle run scoreboard players add @s snc.knockback $(knockback)
$effect give @e[distance=..$(distance),tag=hurtbox] water_breathing 1 0 true

## Remove Energy
$scoreboard players remove $energy $(shifter)_vars $(energy)