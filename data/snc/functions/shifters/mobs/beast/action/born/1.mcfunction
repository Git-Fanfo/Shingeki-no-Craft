execute positioned ^ ^3 ^-2 run function snc:titans/volt/spawn
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 5
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 5
playsound minecraft:aot.beast_roar player @a ~ ~ ~ 5
execute on vehicle on passengers if entity @s[type=player] run item replace entity @s armor.head with carved_pumpkin[custom_model_data=43]

scoreboard players set $hold beast_vars 0