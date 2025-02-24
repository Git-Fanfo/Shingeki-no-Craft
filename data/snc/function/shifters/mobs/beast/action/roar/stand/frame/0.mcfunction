# Each function represents aprox 0.25 seg
playsound minecraft:snc.shifters.beast.roar player @a ~ ~ ~ 5 1
execute on vehicle on controller run item replace entity @s armor.head with carved_pumpkin[item_model="shifters/beast/bite/meat/2"]
#execute on vehicle run attribute @s scale base set 1.6