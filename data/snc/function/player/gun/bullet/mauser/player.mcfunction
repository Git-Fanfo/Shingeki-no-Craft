scoreboard players set @s snc.recoil 0
execute store result score @s snc.bullets run \
    data get entity @s SelectedItem.components."minecraft:custom_data".snc_bullets

execute if score @s snc.bullets matches 10 run item modify entity @s weapon.mainhand snc:gun/mauser/9
execute if score @s snc.bullets matches 9 run item modify entity @s weapon.mainhand snc:gun/mauser/8
execute if score @s snc.bullets matches 8 run item modify entity @s weapon.mainhand snc:gun/mauser/7
execute if score @s snc.bullets matches 7 run item modify entity @s weapon.mainhand snc:gun/mauser/6
execute if score @s snc.bullets matches 6 run item modify entity @s weapon.mainhand snc:gun/mauser/5
execute if score @s snc.bullets matches 5 run item modify entity @s weapon.mainhand snc:gun/mauser/4
execute if score @s snc.bullets matches 4 run item modify entity @s weapon.mainhand snc:gun/mauser/3
execute if score @s snc.bullets matches 3 run item modify entity @s weapon.mainhand snc:gun/mauser/2
execute if score @s snc.bullets matches 2 run item modify entity @s weapon.mainhand snc:gun/mauser/1
execute if score @s snc.bullets matches 1 run item modify entity @s weapon.mainhand snc:gun/mauser/0