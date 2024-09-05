#scoreboard players set @s snc.recoil 0
execute store result score @s snc.bullets run \
    data get entity @s SelectedItem.components."minecraft:custom_data".snc_bullets

execute if score @s snc.bullets matches 15 run item modify entity @s weapon.mainhand snc:gun/carbine/14
execute if score @s snc.bullets matches 14 run item modify entity @s weapon.mainhand snc:gun/carbine/13
execute if score @s snc.bullets matches 13 run item modify entity @s weapon.mainhand snc:gun/carbine/12
execute if score @s snc.bullets matches 12 run item modify entity @s weapon.mainhand snc:gun/carbine/11
execute if score @s snc.bullets matches 11 run item modify entity @s weapon.mainhand snc:gun/carbine/10
execute if score @s snc.bullets matches 10 run item modify entity @s weapon.mainhand snc:gun/carbine/9
execute if score @s snc.bullets matches 9 run item modify entity @s weapon.mainhand snc:gun/carbine/8
execute if score @s snc.bullets matches 8 run item modify entity @s weapon.mainhand snc:gun/carbine/7
execute if score @s snc.bullets matches 7 run item modify entity @s weapon.mainhand snc:gun/carbine/6
execute if score @s snc.bullets matches 6 run item modify entity @s weapon.mainhand snc:gun/carbine/5
execute if score @s snc.bullets matches 5 run item modify entity @s weapon.mainhand snc:gun/carbine/4
execute if score @s snc.bullets matches 4 run item modify entity @s weapon.mainhand snc:gun/carbine/3
execute if score @s snc.bullets matches 3 run item modify entity @s weapon.mainhand snc:gun/carbine/2
execute if score @s snc.bullets matches 2 run item modify entity @s weapon.mainhand snc:gun/carbine/1
execute if score @s snc.bullets matches 1 run item modify entity @s weapon.mainhand snc:gun/carbine/0

playsound minecraft:aot.human.gun.mauser.chamber player @a
execute store result score @s random run random value 1..3
execute if score @s random matches 1 anchored feet run tp @s ~ ~ ~ ~ ~-1
execute if score @s random matches 2 anchored feet run tp @s ~ ~ ~ ~-.5 ~-.7
execute if score @s random matches 3 anchored feet run tp @s ~ ~ ~ ~.5 ~-.7
scoreboard players reset @s random

execute if score @s snc.bullets matches 2.. run item modify entity @s weapon.mainhand snc:gun/carbine/reload