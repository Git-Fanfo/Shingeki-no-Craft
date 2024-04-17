## Debug
# $function snc:logic/distance {"distance":$(distance),"half_minus_zero_point_five":$(half_minus_zero_point_five)}

## Damage
$execute as @e[distance=..$(distance),tag=!$(shifter)] unless score @s shifter_vars matches $(id) run damage @s $(damage) player_attack by @p[scores={$(shifter)_vars=1}]
$execute as @e[distance=..$(distance),tag=transform] unless score @s shifter_vars matches $(id) on vehicle run scoreboard players add @s snc.knockback $(knockback)
$effect give @e[distance=..$(distance),tag=hurtbox] water_breathing 1 0 true

## Play sound
$playsound $(sound) player @a ~ ~ ~ 2.5


## Remove Energy
$scoreboard players remove $energy $(shifter)_vars $(energy)