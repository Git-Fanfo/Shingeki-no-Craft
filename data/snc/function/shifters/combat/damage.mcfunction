## Debug
$function snc:logic/distance {"distance":$(distance),"half_distance":$(half_distance)}
## Destroy?
$execute if score $shifter_destroy config matches 1 if block ^ ^ ^$(half_distance) #snc:tangible run playsound entity.wither.break_block player @a ~ ~ ~ 3 1
$execute if score $shifter_destroy config matches 1 run fill ^$(half_distance) ^$(half_distance) ^$(half_distance) ^-$(half_distance) ^ ^-$(half_distance) air destroy
# /execute rotated ~ 0 run clone ^1 ^-1 ^1 ^-1 ^-1 ^-1 ^ ^ ^1

## Play sound
$execute positioned ~-$(half_distance).5 ~-$(half_distance).5 ~-$(half_distance).5 if entity @e[dx=$(distance),dy=$(distance),dz=$(distance),tag=!$(shifter),type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] run playsound $(sound) player @a ~ ~ ~ 3

## Damage
$execute positioned ~-$(half_distance).5 ~-$(half_distance).5 ~-$(half_distance).5 as @e[dx=$(distance),dy=$(distance),dz=$(distance),tag=!$(shifter),type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] run damage @s $(damage) player_attack by @p[scores={$(shifter)_vars=1}]
## Knockback
$execute positioned ~-$(half_distance).5 ~-$(half_distance).5 ~-$(half_distance).5 as @e[dx=$(distance),dy=$(distance),dz=$(distance),tag=transform,type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] on vehicle at @s rotated as @n[tag=$(shifter)] rotated ~ -$(angle) run function snc:logic/motion/generic {"score":"$(shifter)_vars","strength":$(knockback), "unstoppable":"true"}
## Kill Titans
$execute positioned ~-$(half_distance).5 ~-$(half_distance).5 ~-$(half_distance).5 run effect give @e[dx=$(distance),dy=$(distance),dz=$(distance),tag=hurtbox] water_breathing 1 0 true

## Remove Energy
$scoreboard players remove $energy $(shifter)_vars $(energy)