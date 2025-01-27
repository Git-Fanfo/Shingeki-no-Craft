# Each function represents aprox 0.25 seg
tag @s add consume
execute on vehicle on controller run item replace entity @s armor.head with carved_pumpkin[item_model="shifters/jaw/2"]
execute on vehicle run attribute @s scale base set 1.5
execute on vehicle run effect give @s slowness 1 127 true