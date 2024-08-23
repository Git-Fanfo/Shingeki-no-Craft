## Error and break
execute unless data entity @s SelectedItem.components."minecraft:charged_projectiles"[0].components."minecraft:custom_data".snc_mauser if function snc:player/gun/bullet/error run return -1

## Not Error
execute if score @s snc.bullets matches 0 run item modify entity @s weapon.mainhand snc:gun/mauser/10
execute if score @s snc.bullets matches 0 run advancement grant @s only snc:firearms/mauser