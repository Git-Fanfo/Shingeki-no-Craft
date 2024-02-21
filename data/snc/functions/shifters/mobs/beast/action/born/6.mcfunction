execute on vehicle on passengers if entity @s[type=player] run item replace entity @s armor.head with carved_pumpkin{CustomModelData:48}
execute positioned ^ ^3 ^-2 run function snc:titans/volt/spawn
execute on vehicle on passengers if entity @s[type=player] run effect give @s absorption 20 6