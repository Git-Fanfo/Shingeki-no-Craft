execute on vehicle on passengers if entity @s[type=player] run item replace entity @s armor.head with carved_pumpkin[custom_model_data= 28]
execute on vehicle on passengers if entity @s[type=player] run effect give @s absorption 20 9
scoreboard players set state attack_vars 3

execute on vehicle on passengers if entity @s[type=player] run function snc:give/item/attack/primary