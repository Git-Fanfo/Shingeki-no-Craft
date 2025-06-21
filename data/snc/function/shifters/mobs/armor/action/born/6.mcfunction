execute on vehicle on passengers if entity @s[type=player] run item replace entity @s armor.head with carved_pumpkin[item_model="shifters/armor/bite/7"]
execute positioned ~ ~3 ~ run function snc:titans/volt/spawn
scoreboard players set shift.regen armor_vars 100000