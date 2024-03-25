particle minecraft:item iron_ingot ^ ^1.7 ^ 0 0 0 .15 15
playsound minecraft:item.shield.break player @a ~ ~ ~ 1 1.3
$execute if items entity @s weapon.$(hand)hand #snc:odm[minecraft:damage~{durability:{min:0, max:21}}] run function snc:api/item_replace/survey_corps/odm/$(piece) {"slot":"weapon.$(hand)hand"}
$execute if items entity @s weapon.$(hand)hand #snc:odm[minecraft:damage~{durability:{min:22, max:41}}] run item modify entity @s weapon.$(hand)hand snc:durability/20
$execute if items entity @s weapon.$(hand)hand #snc:odm[minecraft:damage~{durability:{min:42, max:61}}] run item modify entity @s weapon.$(hand)hand snc:durability/40
$execute if items entity @s weapon.$(hand)hand #snc:odm[minecraft:damage~{durability:{min:62, max:81}}] run item modify entity @s weapon.$(hand)hand snc:durability/60
$execute if items entity @s weapon.$(hand)hand #snc:odm[minecraft:damage~{durability:{min:82}}] run item modify entity @s weapon.$(hand)hand snc:durability/80