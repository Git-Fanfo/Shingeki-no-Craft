# Each function represents aprox 0.25 seg
playsound minecraft:aot.shifters.bite player @a ~ ~ ~ 5 1
execute on vehicle on controller run function snc:shifters/mobs/head {"shifter":"jaw", "type":"meat", "frame":4}
execute on vehicle run attribute @s scale base set 1.25