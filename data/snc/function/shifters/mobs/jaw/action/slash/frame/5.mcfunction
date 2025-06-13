# Each function represents aprox 0.25 seg
execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/head {"shifter":"jaw", "type":"meat", "frame":1}
execute if score $air jaw_vars matches 0 run playsound minecraft:snc.shifters.jaw.smash player @a ^ ^ ^ 2 1
execute on vehicle run attribute @s scale base set 3