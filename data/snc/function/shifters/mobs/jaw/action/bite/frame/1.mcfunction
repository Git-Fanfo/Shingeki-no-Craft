# Each function represents aprox 0.25 seg
execute on vehicle on controller run item replace entity @s armor.head with carved_pumpkin[item_model="shifters/jaw/3"]
execute on vehicle at @s rotated ~ -2 run function snc:logic/motion/generic {"score":"jaw_vars","strength":0.01, "unstoppable":"false"}