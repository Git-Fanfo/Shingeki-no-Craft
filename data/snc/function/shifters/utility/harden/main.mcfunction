advancement revoke @s only snc:shifters/armor/harden

execute unless items entity @s weapon.offhand #minecraft:trimmable_armor if function snc:shifters/utility/harden/error run return -1
execute if items entity @s weapon.offhand #minecraft:trimmable_armor unless items entity @s weapon.offhand *[minecraft:custom_model_data=1] run function snc:shifters/utility/harden/transform