execute on vehicle on passengers if entity @s[type=player] run item replace entity @s armor.head with carved_pumpkin{CustomModelData:28}
scoreboard players set state attack_vars 3

execute on vehicle on passengers if entity @s[type=player] run function snc:give/item/attack/primary