## Debug
#$function snc:logic/distance {"distance":$(distance),"half_minus_zero_point_five":$(half_minus_zero_point_five)}
## Destroy?
$execute if score $shifter_destroy config matches 1 if block ^ ^ ^$(half_minus_zero_point_five) #snc:tangible run playsound entity.wither.break_block player @a ~ ~ ~ 3 1
$execute if score $shifter_destroy config matches 1 run fill ^$(half_minus_zero_point_five) ^$(half_minus_zero_point_five) ^$(half_minus_zero_point_five) ^-$(half_minus_zero_point_five) ^ ^-$(half_minus_zero_point_five) air destroy
# /execute rotated ~ 0 run clone ^1 ^-1 ^1 ^-1 ^-1 ^-1 ^ ^ ^1

## Play sound
$execute if entity @e[distance=..$(distance),tag=!$(shifter),type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] run playsound $(sound) player @a ~ ~ ~ 3
## Damage
$execute as @e[distance=..$(distance),tag=!$(shifter),type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] run damage @s $(damage) player_attack by @p[scores={$(shifter)_vars=1}]
## Knockback
$execute as @e[distance=..$(distance),tag=transform,type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] on vehicle at @s rotated as @n[tag=$(shifter)] rotated ~ -$(angle) run function snc:logic/motion/generic {"score":"$(shifter)_vars","strength":$(knockback), "unstoppable":"true"}
## Kill Titans
$effect give @e[distance=..$(distance),tag=hurtbox] water_breathing 1 0 true

## Remove Energy
$scoreboard players remove $energy $(shifter)_vars $(energy)