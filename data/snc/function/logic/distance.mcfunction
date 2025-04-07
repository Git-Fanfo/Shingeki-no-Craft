particle glow_squid_ink ~ ~ ~ .5 .5 .5 0 100 force
#$particle minecraft:damage_indicator ~ ~ ~ $(half_distance) $(half_distance) $(half_distance) 0 1000 force
$execute positioned ~-$(half_distance).5 ~-$(half_distance).5 ~-$(half_distance).5 run effect give @e[dx=$(distance),dy=$(distance),dz=$(distance)] glowing 5 0 true