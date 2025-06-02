scoreboard players add @s jaw_vars 1
particle minecraft:cloud ~ ~4 ~ 1 2 1 .15 200 force
playsound minecraft:aot.steam player @a ~ ~ ~ 2 1
execute if score @s jaw_vars matches 1 run function animated_java:jaw/variants/decay1/apply
execute if score @s jaw_vars matches 1 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:item_model="shifters/jaw/bite/decay/1"]
execute if score @s jaw_vars matches 2 run function animated_java:jaw/variants/decay2/apply
execute if score @s jaw_vars matches 2 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:item_model="shifters/jaw/bite/decay/2"]
execute if score @s jaw_vars matches 3 run function animated_java:jaw/variants/decay3/apply
execute if score @s jaw_vars matches 3 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:item_model="shifters/jaw/bite/decay/3"]
execute if score @s jaw_vars matches 4 run function animated_java:jaw/variants/decay4/apply
execute if score @s jaw_vars matches 4 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:item_model="shifters/jaw/bite/decay/4"]
execute if score @s jaw_vars matches 5 run function animated_java:jaw/variants/decay5/apply
execute if score @s jaw_vars matches 5 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:item_model="shifters/jaw/bite/decay/5"]
execute if score @s jaw_vars matches 6 run function animated_java:jaw/variants/decay6/apply
execute if score @s jaw_vars matches 6 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:item_model="shifters/jaw/bite/decay/6"]
execute if score @s jaw_vars matches 7 run function animated_java:jaw/variants/decay7/apply
execute if score @s jaw_vars matches 7 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:item_model="shifters/jaw/bite/decay/7"]
execute if score @s jaw_vars matches 8 run function animated_java:jaw/variants/decay8/apply
execute if score @s jaw_vars matches 8 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:item_model="shifters/jaw/bite/decay/8"]
execute if score @s jaw_vars matches 9 run function animated_java:jaw/variants/decay9/apply
execute if score @s jaw_vars matches 9 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:item_model="shifters/jaw/bite/decay/9"]
execute if score @s jaw_vars matches 10 run function animated_java:jaw/variants/decay10/apply
execute if score @s jaw_vars matches 10 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:item_model="shifters/jaw/bite/decay/10"]
execute if score @s jaw_vars matches 11 run function animated_java:jaw/variants/decay11/apply
execute if score @s jaw_vars matches 11 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:item_model="shifters/jaw/bite/decay/11"]
execute if score @s jaw_vars matches 12 run function animated_java:jaw/variants/decay12/apply
execute if score @s jaw_vars matches 12 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:item_model="shifters/jaw/bite/decay/12"]
