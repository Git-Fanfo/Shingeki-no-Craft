execute positioned ^ ^3 ^-2 run function snc:titans/volt/spawn
playsound minecraft:snc.shifters.lightning master @a ~ ~ ~ 24
playsound minecraft:snc.shifters.lightning master @a ~ ~ ~ 24
playsound minecraft:snc.shifters.beast.roar player @a ~ ~ ~ 24
execute on vehicle on passengers if entity @s[type=player] run item replace entity @s armor.head with carved_pumpkin[item_model="shifters/beast/bite/decay/14"]

scoreboard players set $hold beast_vars 0