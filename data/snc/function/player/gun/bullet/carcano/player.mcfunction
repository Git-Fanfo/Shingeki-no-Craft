#scoreboard players add @s earthquake 6
data merge entity @n[type=spectral_arrow] {PierceLevel:1b,damage:6d,Tags:["snc.projectile","snc.bullet","snc.bullet.init","snc.bullet.player"]}

scoreboard players set @s snc.recoil 0
execute store result score @s snc.bullets run \
    data get entity @s SelectedItem.components."minecraft:custom_data".snc_bullets

execute if score @s snc.bullets matches 6 run item modify entity @s weapon.mainhand snc:gun/carcano/5
execute if score @s snc.bullets matches 5 run item modify entity @s weapon.mainhand snc:gun/carcano/4
execute if score @s snc.bullets matches 4 run item modify entity @s weapon.mainhand snc:gun/carcano/3
execute if score @s snc.bullets matches 3 run item modify entity @s weapon.mainhand snc:gun/carcano/2
execute if score @s snc.bullets matches 2 run item modify entity @s weapon.mainhand snc:gun/carcano/1
execute if score @s snc.bullets matches 1 run item modify entity @s weapon.mainhand snc:gun/carcano/0