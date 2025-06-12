execute on vehicle on passengers if entity @s[tag=transform] run item replace entity @s armor.head with carved_pumpkin[item_model="shifters/jaw/bite/decay/12"]
execute positioned ~ ~3 ~ run function snc:titans/volt/spawn
playsound minecraft:snc.shifters.lightning master @a ~ ~ ~ 24
playsound minecraft:snc.shifters.lightning master @a ~ ~ ~ 24
playsound minecraft:snc.shifters.jaw.roar player @a ~ ~ ~ 24
execute on vehicle run effect give @s levitation 2 2 true