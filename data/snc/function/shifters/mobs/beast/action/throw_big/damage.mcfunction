effect give @s[tag=hurtbox] water_breathing 1 0 true
effect give @s slowness 5 3 true
$damage @s $(damage_focus) fly_into_wall

$execute unless score @s shifter_vars matches 4 at @s rotated as @n[tag=snc.boulder] rotated ~180 ~ run function snc:shifters/combat/damage {"distance":8,"half_distance":4,"shifter":"beast","sound":"entity.breeze.jump","damage":1$(damage_focus),"knockback":$(knockback_focus),"energy":0,"angle":$(angle_focus)}