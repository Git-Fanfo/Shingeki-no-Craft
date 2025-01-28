attribute @s minecraft:block_interaction_range base set 0
## Detect Roar
$execute \
    if predicate snc:shifters/has_roar run \
        function snc:shifters/mobs/roar {"shifter":"$(shifter)"}
#$execute \
    if score consume $(shifter)_vars matches ..20 \
    if predicate snc:shifters/has_roar run \
        function snc:shifters/mobs/roar {"shifter":"$(shifter)"}
## Bite and Roar
#$execute \
    if score consume $(shifter)_vars matches 0..20 run \
        function snc:shifters/mobs/$(shifter)/animate/bite
#$execute \
    if score consume $(shifter)_vars matches 61..220 run \
        function snc:shifters/mobs/$(shifter)/animate/roar
#$execute \
    if score consume $(shifter)_vars matches 0.. run \
        scoreboard players remove consume $(shifter)_vars 1

## UNIQUE: BEAST
execute if score @s shifter_vars matches 4 positioned ^ ^ ^13 positioned over world_surface as @e[type=#snc:baseball] run function snc:shifters/mobs/beast/action/grab/highlight

## UNIQUE: ARMOR
$execute if score @s armor_vars matches 1 unless score $hardening $(shifter)_vars = $op.hardening $(shifter)_vars run function snc:shifters/mobs/armor/action/hardening/main {"shifter":$(shifter)}