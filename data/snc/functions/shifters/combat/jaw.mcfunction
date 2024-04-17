## Paricle
$particle crit ^ ^ ^ 0 0 0 1 $(damage_jaw) force

## Damage
$execute unless score @s shifter_vars matches $(id) run damage @s $(damage_jaw) player_attack by @p[scores={$(shifter)_vars=1}]
$execute unless score @s shifter_vars matches $(id) on vehicle run scoreboard players add @s snc.knockback $(knockback_jaw)
effect give @s[tag=hurtbox] water_breathing 1 0 true

## Remove Energy
$scoreboard players remove $energy $(shifter)_vars $(energy_jaw)