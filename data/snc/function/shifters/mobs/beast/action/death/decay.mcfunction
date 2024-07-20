scoreboard players add @s beast_vars 1
particle minecraft:cloud ~ ~9 ~ 2 3 2 .15 300 force
playsound minecraft:aot.steam player @a ~ ~9 ~ 2 1
execute if score @s beast_vars matches 1 run function animated_java:beast/variants/noskin_1/apply
execute if score @s beast_vars matches 1 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[custom_model_data=57]
execute if score @s beast_vars matches 2 run function animated_java:beast/variants/noskin_2/apply
execute if score @s beast_vars matches 2 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[custom_model_data=56]
execute if score @s beast_vars matches 3 run function animated_java:beast/variants/noskin_3/apply
execute if score @s beast_vars matches 3 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[custom_model_data=55]
execute if score @s beast_vars matches 4 run function animated_java:beast/variants/noskin_4/apply
execute if score @s beast_vars matches 4 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[custom_model_data=54]
execute if score @s beast_vars matches 5 run function animated_java:beast/variants/noskin_5/apply
execute if score @s beast_vars matches 5 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[custom_model_data=53]
execute if score @s beast_vars matches 6 run function animated_java:beast/variants/noskin_6/apply
execute if score @s beast_vars matches 6 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[custom_model_data=52]
execute if score @s beast_vars matches 7 run function animated_java:beast/variants/noskin_7/apply
execute if score @s beast_vars matches 7 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[custom_model_data=51]
execute if score @s beast_vars matches 8 run function animated_java:beast/variants/noskin_8/apply
execute if score @s beast_vars matches 8 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[custom_model_data=50]
execute if score @s beast_vars matches 9 run function animated_java:beast/variants/noskin_9/apply
execute if score @s beast_vars matches 9 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[custom_model_data=49]
execute if score @s beast_vars matches 10 run function animated_java:beast/variants/noskin_10/apply
execute if score @s beast_vars matches 10 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[custom_model_data=48]
execute if score @s beast_vars matches 11 run function animated_java:beast/variants/noskin_11/apply
execute if score @s beast_vars matches 11 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[custom_model_data=47]
execute if score @s beast_vars matches 12 run function animated_java:beast/variants/noskin_12/apply
execute if score @s beast_vars matches 12 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[custom_model_data=46]
execute if score @s beast_vars matches 13 run function animated_java:beast/variants/noskin_13/apply
execute if score @s beast_vars matches 13 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[custom_model_data=45]
execute if score @s beast_vars matches 14 run function animated_java:beast/variants/noskin_14/apply
execute if score @s beast_vars matches 14 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[custom_model_data=44]
execute if score @s beast_vars matches 15 run function animated_java:beast/variants/noskin_15/apply
execute if score @s beast_vars matches 15 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[custom_model_data=43]