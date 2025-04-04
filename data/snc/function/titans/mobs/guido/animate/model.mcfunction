#$say data modify entity @s item.components.minecraft:custom_model_data set value $(id)0$(model)
#$data modify entity @s item.components.minecraft:custom_model_data set value $(id)0$(model)
$data modify entity @s item.components.minecraft:item_model set value "minecraft:titan/$(id)/walk/$(model)"
return 1