data merge entity @s {LeftHanded:0b,Tags:["marleyan","soldier_dmg"],HandDropChances:[0.085F,0.000F],ArmorItems:[{},{},{},{id:"minecraft:feather",count:1,components:{"item_model":"military/soldiers/1"}}],ArmorDropChances:[0F,0F,0F,0F]}
#,body_armor_item:{id:"minecraft:carrot",count:1},body_armor_drop_chance:1.000F
execute store result score @s random run random value 1..4
execute if score @s random matches 1 run function snc:api/item_replace/misc/gun/carcano {"slot":"weapon.mainhand"}
execute if score @s random matches 2..4 run function snc:api/item_replace/misc/gun/mauser {"slot":"weapon.mainhand"}
#function snc:api/item_replace/misc/gun/carcano_ammo {"slot":"armor.body"}
item replace entity @s weapon.offhand with spectral_arrow[max_stack_size=99,item_model="item/blank"] 99