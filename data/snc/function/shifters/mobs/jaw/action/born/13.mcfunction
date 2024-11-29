execute on vehicle on passengers if entity @s[type=player] run item replace entity @s armor.head with carved_pumpkin[custom_model_data=86]
scoreboard players set shift.regen jaw_vars 100000
scoreboard players set state jaw_vars 3
execute on vehicle on passengers if entity @s[type=player] run function snc:shifters/mobs/jaw/abilities/give