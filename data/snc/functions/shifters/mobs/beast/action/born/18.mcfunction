execute on vehicle on passengers if entity @s[type=player] run item replace entity @s armor.head with carved_pumpkin[custom_model_data=60]
execute on vehicle on passengers if entity @s[type=player] run effect give @s absorption 20 12
scoreboard players set state beast_vars 3

execute on vehicle on passengers if entity @s[type=player] run function snc:shifters/mobs/beast/abilities/give