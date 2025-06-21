execute on vehicle on passengers if entity @s[type=player] run item replace entity @s armor.head with carved_pumpkin[item_model="shifters/armor/bite/1_2/1"]
scoreboard players set shift.regen armor_vars 100000
scoreboard players set state armor_vars 3
execute on vehicle on passengers if entity @s[type=player] run function snc:shifters/mobs/armor/abilities/give