## Error and break
execute unless data entity @s SelectedItem.components."minecraft:charged_projectiles"[0].components."minecraft:custom_data".snc_carcano if function snc:player/gun/bullet/error run return -1

## Not Error
execute if score @s snc.bullets matches 1.. run effect give @s slowness 1 4 true
execute if score @s snc.bullets matches 0 run item modify entity @s weapon.mainhand snc:gun/carcano/6