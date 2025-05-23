## Damage
$execute unless score #0 constant matches $(damage) if entity @s[tag=!$(shifter)] run damage @s $(damage) player_attack by @p[scores={$(shifter)_vars=1}]
## Knockback
$execute if entity @s[tag=transform] on vehicle at @s rotated as @n[tag=$(shifter)] rotated ~ -$(angle) run function snc:logic/motion/generic {"score":"$(shifter)_vars","strength":$(knockback), "unstoppable":"true"}
## Kill Titans
effect give @s[tag=hurtbox] water_breathing 1 0 true