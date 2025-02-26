execute on vehicle on passengers if entity @s[type=player] run item replace entity @s armor.head with carved_pumpkin[item_model="shifters/attack/bite/decay/1"]
execute on vehicle on passengers if entity @s[type=player] run effect give @s absorption 20 9
scoreboard players set state attack_vars 3

execute on vehicle on passengers if entity @s[type=player] run function snc:shifters/mobs/attack/abilities/give