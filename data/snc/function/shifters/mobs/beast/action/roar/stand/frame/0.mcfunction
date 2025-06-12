# Each function represents aprox 0.25 seg
playsound minecraft:snc.shifters.beast.roar player @a ~ ~ ~ 24
execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/beast/head {"frame":2}
#execute on vehicle run attribute @s scale base set 1.6