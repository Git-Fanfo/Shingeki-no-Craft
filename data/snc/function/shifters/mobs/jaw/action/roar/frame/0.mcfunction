# Each function represents aprox 0.25 seg
execute as @a[distance=..90] at @s run playsound minecraft:snc.shifters.jaw.roar player @s ~ ~ ~ 8 1
execute on vehicle on controller run item replace entity @s armor.head with carved_pumpkin[item_model="shifters/jaw/2"]
execute on vehicle run attribute @s scale base set 1.6
execute on vehicle run effect give @s slowness 2 127 true