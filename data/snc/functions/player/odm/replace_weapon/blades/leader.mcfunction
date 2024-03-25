particle minecraft:item iron_ingot ^ ^1.7 ^ 0 0 0 .15 15
playsound minecraft:item.shield.break player @a ~ ~ ~ 1 1.3
$execute if items entity @s weapon.$(hand)hand #snc:odm[minecraft:damage~{durability:{min:0, max:26}}] run function snc:api/item_replace/survey_corps/odm/$(piece) {"slot":"weapon.$(hand)hand"}
$execute if items entity @s weapon.$(hand)hand #snc:odm[minecraft:damage~{durability:{min:27, max:51}}] run item modify entity @s weapon.$(hand)hand snc:durability/25
$execute if items entity @s weapon.$(hand)hand #snc:odm[minecraft:damage~{durability:{min:52, max:76}}] run item modify entity @s weapon.$(hand)hand snc:durability/50
$execute if items entity @s weapon.$(hand)hand #snc:odm[minecraft:damage~{durability:{min:77}}] run item modify entity @s weapon.$(hand)hand snc:durability/75