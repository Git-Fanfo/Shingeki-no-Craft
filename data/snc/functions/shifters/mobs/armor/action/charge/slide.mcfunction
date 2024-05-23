scoreboard players set state armor_vars 16
execute on vehicle on passengers if entity @s[type=player] run effect clear @s speed
execute on vehicle on passengers if entity @s[type=player] run effect give @s slowness 2 8 true

$execute if score $grab armor_vars matches 2 positioned ^ ^ ^2 run function snc:shifters/combat/damage {"distance":10,"half_minus_zero_point_five":4.5,"shifter":"armor","sound":"minecraft:aot.shifters.armor.punch.land_strong","damage":$(damage_onslaught),"knockback":"$(knockback_onslaught)","energy":$(energy_onslaught)}

$execute if score $grab armor_vars matches 3 positioned ^ ^ ^2 run function snc:shifters/combat/damage {"distance":10,"half_minus_zero_point_five":4.5,"shifter":"armor","sound":"minecraft:aot.rock_smash","damage":$(damage_impale),"knockback":$(knockback_impale),"energy":$(energy_impale)}

execute if score $grab armor_vars matches 2.. run particle campfire_cosy_smoke ^ ^5 ^3 .2 .2 .2 .5 200 force

scoreboard players set $grab armor_vars 0