attribute @s minecraft:block_interaction_range base set 0
## Detect Roar
$execute \
    if predicate snc:shifters/has_roar run \
        function snc:shifters/mobs/roar {"shifter":"$(shifter)"}

## UNIQUE: BEAST
execute if score @s shifter_vars matches 4 positioned ^ ^ ^13 positioned over world_surface as @e[type=#snc:baseball] run function snc:shifters/mobs/beast/action/grab/highlight

## UNIQUE: ARMOR
$execute if score @s armor_vars matches 1 unless score $hardening $(shifter)_vars = $op.hardening $(shifter)_vars run function snc:shifters/mobs/armor/action/hardening/main {"shifter":$(shifter)}