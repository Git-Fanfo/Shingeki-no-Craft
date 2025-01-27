# Each function represents aprox 0.25 seg
execute on vehicle on controller at @s anchored eyes run function snc:shifters/mobs/jaw/action/bite/damage with storage minecraft:jaw
execute on vehicle on controller run item replace entity @s armor.head with carved_pumpkin[item_model="shifters/jaw/1"]