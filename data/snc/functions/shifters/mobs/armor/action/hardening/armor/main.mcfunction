advancement revoke @s only snc:shifters/armor/harden

execute unless items entity @s weapon.offhand #minecraft:trimmable_armor run function snc:shifters/mobs/armor/action/hardening/armor/error
execute if items entity @s weapon.offhand #minecraft:trimmable_armor unless items entity @s weapon.offhand *[minecraft:custom_model_data=1] run function snc:shifters/mobs/armor/action/hardening/armor/transform

# Modify chainmail armor
execute if items entity @s weapon.offhand minecraft:chainmail_helmet run item modify entity @s weapon.offhand snc:hardening/helmet/chainmail
execute if items entity @s weapon.offhand minecraft:chainmail_chestplate run item modify entity @s weapon.offhand snc:hardening/chestplate/chainmail
execute if items entity @s weapon.offhand minecraft:chainmail_leggings run item modify entity @s weapon.offhand snc:hardening/leggings/chainmail
execute if items entity @s weapon.offhand minecraft:chainmail_boots run item modify entity @s weapon.offhand snc:hardening/boots/chainmail

# Modify iron armor
execute if items entity @s weapon.offhand minecraft:iron_helmet run item modify entity @s weapon.offhand snc:hardening/helmet/iron
execute if items entity @s weapon.offhand minecraft:iron_chestplate run item modify entity @s weapon.offhand snc:hardening/chestplate/iron
execute if items entity @s weapon.offhand minecraft:iron_leggings run item modify entity @s weapon.offhand snc:hardening/leggings/iron
execute if items entity @s weapon.offhand minecraft:iron_boots run item modify entity @s weapon.offhand snc:hardening/boots/iron

# Modify golden armor
execute if items entity @s weapon.offhand minecraft:golden_helmet run item modify entity @s weapon.offhand snc:hardening/helmet/golden
execute if items entity @s weapon.offhand minecraft:golden_chestplate run item modify entity @s weapon.offhand snc:hardening/chestplate/golden
execute if items entity @s weapon.offhand minecraft:golden_leggings run item modify entity @s weapon.offhand snc:hardening/leggings/golden
execute if items entity @s weapon.offhand minecraft:golden_boots run item modify entity @s weapon.offhand snc:hardening/boots/golden

# Modify diamond armor
execute if items entity @s weapon.offhand minecraft:diamond_helmet run item modify entity @s weapon.offhand snc:hardening/helmet/diamond
execute if items entity @s weapon.offhand minecraft:diamond_chestplate run item modify entity @s weapon.offhand snc:hardening/chestplate/diamond
execute if items entity @s weapon.offhand minecraft:diamond_leggings run item modify entity @s weapon.offhand snc:hardening/leggings/diamond
execute if items entity @s weapon.offhand minecraft:diamond_boots run item modify entity @s weapon.offhand snc:hardening/boots/diamond

# Modify netherite armor
execute if items entity @s weapon.offhand minecraft:netherite_helmet run item modify entity @s weapon.offhand snc:hardening/helmet/netherite
execute if items entity @s weapon.offhand minecraft:netherite_chestplate run item modify entity @s weapon.offhand snc:hardening/chestplate/netherite
execute if items entity @s weapon.offhand minecraft:netherite_leggings run item modify entity @s weapon.offhand snc:hardening/leggings/netherite
execute if items entity @s weapon.offhand minecraft:netherite_boots run item modify entity @s weapon.offhand snc:hardening/boots/netherite