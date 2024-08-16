data merge entity @s {Tags:["marleyan","soldier_dmg"],HandDropChances:[0.085F,0.000F],ArmorItems:[{},{},{},{id:"minecraft:feather",count:1,components:{"custom_model_data":1}}],ArmorDropChances:[0F,0F,0F,0F]}
#,body_armor_item:{id:"minecraft:carrot",count:1},body_armor_drop_chance:1.000F
function snc:api/item_replace/misc/gun/carcano {"slot":"weapon.mainhand"}
#function snc:api/item_replace/misc/gun/carcano_ammo {"slot":"armor.body"}
item replace entity @s weapon.offhand with spectral_arrow[max_stack_size=99,custom_model_data=1] 99