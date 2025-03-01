## Hardening
execute if score state armor_vars matches 9 run scoreboard players set #grab armor_vars 0
execute if entity @s[tag=armor.hardening] if score #grab armor_vars matches 0 run kill

execute if entity @s[tag=armor.hardening] run function snc:shifters/mobs/armor/action/hardening/hitbox
## Charge
execute if entity @s[tag=armor.charge] run function snc:shifters/mobs/armor/action/charge/hitbox

## ALWAYS: Remove when dead
execute if score state armor_vars matches 9 run kill