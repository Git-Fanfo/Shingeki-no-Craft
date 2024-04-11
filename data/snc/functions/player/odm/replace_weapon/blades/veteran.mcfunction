particle minecraft:item{"item":"minecraft:iron_ingot"} ^ ^1.7 ^ 0 0 0 .15 15 force
playsound minecraft:item.shield.break player @a ~ ~ ~ 1 1.3
$execute if items entity @s weapon.$(hand)hand #snc:odm[minecraft:damage~{durability:{min:0, max:34}}] run function snc:api/item_replace/survey_corps/odm/$(piece) {"slot":"weapon.$(hand)hand"}
$execute if items entity @s weapon.$(hand)hand #snc:odm[minecraft:damage~{durability:{min:35, max:67}}] run item modify entity @s weapon.$(hand)hand snc:durability/33
$execute if items entity @s weapon.$(hand)hand #snc:odm[minecraft:damage~{durability:{min:68}}] run item modify entity @s weapon.$(hand)hand snc:durability/66