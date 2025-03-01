playsound minecraft:snc.shifters.attack.roar player @a ~ ~ ~ 5 1
execute on vehicle on controller run item replace entity @s armor.head with carved_pumpkin[item_model="shifters/attack/bite/meat/2"]
execute on vehicle at @s rotated ~ -2 run function snc:logic/motion/generic {"score":"attack_vars","strength":0.02, "unstoppable":"false"}