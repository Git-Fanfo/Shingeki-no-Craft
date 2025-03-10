# Each function represents aprox 0.25 seg
playsound minecraft:aot.shifters.bite player @a ~ ~ ~ 5 1
execute on vehicle on controller run item replace entity @s armor.head with carved_pumpkin[item_model="shifters/beast/bite/meat/4"]
execute unless score state beast_vars matches 2 on vehicle at @s rotated ~ -2 run function snc:logic/motion/generic {"score":"beast_vars","strength":0.005, "unstoppable":"false"}