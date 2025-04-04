#effect give @s invisibility infinite 0 true
#effect give @s resistance infinite 5 true
execute unless entity @s[team=titan] run team join titan

## Koniglich
execute if score @s koniglich matches 1 run function snc:eldia/koniglich
# kill if its not on body
execute unless predicate snc:is_riding run function snc:logic/kill_mob

# If is under water_breathing -> kill
execute if predicate snc:titan/kill run function snc:titans/kill