## Debug
$execute if score $debug config matches 1 run function snc:logic/hitbox/focus {"distance":$(distance),"half_distance":$(half_distance)}
## Destroy
$execute if score $shifter_destroy config matches 1 if block ^ ^ ^$(half_distance) #snc:tangible run playsound entity.wither.break_block player @a ~ ~ ~ 3 1
$execute if score $shifter_destroy config matches 1 run fill ^$(half_distance) ^$(half_distance) ^$(half_distance) ^-$(half_distance) ^ ^-$(half_distance) air destroy
# Playsound
$execute positioned ~-$(half_distance).5 ~-$(half_distance).5 ~-$(half_distance).5 if entity @n[dx=$(distance),dy=$(distance),dz=$(distance),tag=!$(shifter),type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] run playsound $(sound) player @a ~ ~ ~ 3
## Apply Damage
$execute positioned ~-$(half_distance).5 ~-$(half_distance).5 ~-$(half_distance).5 as @e[dx=$(distance),dy=$(distance),dz=$(distance),type=!#snc:pivot,predicate=!snc:shifters/$(shifter)/score] run function snc:shifters/combat/apply {"shifter":"$(shifter)", "damage": "$(damage)", "angle": "$(angle)", "knockback": "$(knockback)"}
## Remove Energy
$scoreboard players remove $energy $(shifter)_vars $(energy)