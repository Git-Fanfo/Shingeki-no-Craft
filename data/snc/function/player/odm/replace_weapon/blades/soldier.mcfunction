particle minecraft:item{"item":"minecraft:iron_ingot"} ^ ^1.7 ^ 0 0 0 .15 15 force
playsound minecraft:item.shield.break player @a ~ ~ ~ 1 1.3
$execute if items entity @s weapon.$(hand)hand #snc:odm[minecraft:damage~{durability:{min:0, max:50}}] run item modify entity @s weapon.$(hand)hand snc:odm/blades/$(piece)_empty
$execute if items entity @s weapon.$(hand)hand #snc:odm[minecraft:damage~{durability:{min:51}}] run item modify entity @s weapon.$(hand)hand snc:durability/50