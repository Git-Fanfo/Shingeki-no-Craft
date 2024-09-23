# Get bullets
execute store result score @s snc.bullets run \
    data get entity @s SelectedItem.components."minecraft:custom_data".snc_bullets

execute unless items entity @s weapon.mainhand minecraft:crossbow[minecraft:charged_projectiles=[]] \
    run function snc:player/gun/bullet/carbine/chamber

execute if score @s snc.recoil matches 0 run scoreboard players add @s snc.recoil 1