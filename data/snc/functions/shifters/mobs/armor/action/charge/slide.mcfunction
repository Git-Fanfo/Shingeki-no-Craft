tag @s remove snc.armor.charge
scoreboard players set state armor_vars 12
execute on vehicle on passengers if entity @s[type=player] run effect clear @s speed
execute on vehicle on passengers if entity @s[type=player] run effect give @s slowness 2 0 true