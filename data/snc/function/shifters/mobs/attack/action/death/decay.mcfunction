scoreboard players add @s attack_vars 1
particle minecraft:cloud ~ ~4 ~ 1 2 1 .15 200 force
playsound minecraft:aot.steam player @a ~ ~ ~ 2 1
execute if score @s attack_vars matches 1 run function animated_java:attack/variants/noskin_1/apply
execute if score @s attack_vars matches 1 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[item_model="shifters/attack/bite/decay/1"]
execute if score @s attack_vars matches 2 run function animated_java:attack/variants/noskin_2/apply
execute if score @s attack_vars matches 2 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[item_model="shifters/attack/bite/decay/2"]
execute if score @s attack_vars matches 3 run function animated_java:attack/variants/noskin_3/apply
execute if score @s attack_vars matches 3 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[item_model="shifters/attack/bite/decay/3"]
execute if score @s attack_vars matches 4 run function animated_java:attack/variants/noskin_4/apply
execute if score @s attack_vars matches 4 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[item_model="shifters/attack/bite/decay/4"]
execute if score @s attack_vars matches 5 run function animated_java:attack/variants/noskin_5/apply
execute if score @s attack_vars matches 5 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[item_model="shifters/attack/bite/decay/5"]
execute if score @s attack_vars matches 6 run function animated_java:attack/variants/noskin_6/apply
execute if score @s attack_vars matches 6 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[item_model="shifters/attack/bite/decay/6"]
execute if score @s attack_vars matches 7 run function animated_java:attack/variants/noskin_7/apply
execute if score @s attack_vars matches 7 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[item_model="shifters/attack/bite/decay/7"]
execute if score @s attack_vars matches 8 run function animated_java:attack/variants/noskin_8/apply
execute if score @s attack_vars matches 8 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[item_model="shifters/attack/bite/decay/8"]
execute if score @s attack_vars matches 9 run function animated_java:attack/variants/noskin_9/apply
execute if score @s attack_vars matches 9 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[item_model="shifters/attack/bite/decay/9"]
execute if score @s attack_vars matches 10 run function animated_java:attack/variants/noskin_10/apply
execute if score @s attack_vars matches 10 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[item_model="shifters/attack/bite/decay/10"]
