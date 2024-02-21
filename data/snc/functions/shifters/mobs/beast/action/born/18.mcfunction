execute on vehicle on passengers if entity @s[type=player] run item replace entity @s armor.head with carved_pumpkin{CustomModelData:60}
execute on vehicle on passengers if entity @s[type=player] run effect give @s absorption 20 12
scoreboard players set state beast_vars 3

execute on vehicle on passengers if entity @s[type=player] run function snc:give/item/beast/primary