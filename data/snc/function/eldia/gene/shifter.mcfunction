execute \
    if score $shift_spwn_rate config matches 1 \
    if score $spawn.shifter shifter_vars matches 1.. \
    if predicate snc:chance/50 \
    unless entity @e[type=villager,scores={shifter_vars=1..},distance=..80] run \
        function snc:shifters/select_eldian
execute \
    if score $shift_spwn_rate config matches 2 \
    if score $spawn.shifter shifter_vars matches 1.. \
    unless entity @e[type=villager,scores={shifter_vars=1..},distance=..80] run \
        function snc:shifters/select_eldian