particle minecraft:electric_spark ~ ~1 ~ .2 .5 .2 1 10 force

## Save Boots
$execute if score @s atk matches 266 if items entity @s armor.feet * run data modify storage minecraft:$(shifter) Boots set from entity @s Inventory[{Slot:100b}]
$execute if score @s atk matches 266 if items entity @s armor.feet * run data modify storage minecraft:$(shifter) Boots merge value {Slot:0b}
$execute if score @s atk matches 266 unless items entity @s armor.feet * run data modify storage minecraft:$(shifter) Boots merge value {Slot:0b,id:"minecraft:air"}
# Give muscle
execute if score @s atk matches 266 run item replace entity @s armor.feet with leather_boots[minecraft:hide_tooltip={},trim={material:blank,pattern:muscle_gold},enchantments={levels:{"minecraft:binding_curse":1}},enchantment_glint_override=true]

## Save Leggings
$execute if score @s atk matches 265 if items entity @s armor.legs * run data modify storage minecraft:$(shifter) Leggings set from entity @s Inventory[{Slot:101b}]
$execute if score @s atk matches 265 if items entity @s armor.legs * run data modify storage minecraft:$(shifter) Leggings merge value {Slot:0b}
$execute if score @s atk matches 265 unless items entity @s armor.legs * run data modify storage minecraft:$(shifter) Leggings merge value {Slot:0b,id:"minecraft:air"}
# Give muscle
execute if score @s atk matches 265 run item replace entity @s armor.feet with leather_boots[minecraft:hide_tooltip={},trim={material:blank,pattern:muscle}]
execute if score @s atk matches 265 run item replace entity @s armor.legs with leather_leggings[minecraft:hide_tooltip={},trim={material:blank,pattern:muscle_gold},enchantment_glint_override=true]

## Save Chest
$execute if score @s atk matches 264 if items entity @s armor.chest * run data modify storage minecraft:$(shifter) Chestplate set from entity @s Inventory[{Slot:102b}]
$execute if score @s atk matches 264 if items entity @s armor.chest * run data modify storage minecraft:$(shifter) Chestplate merge value {Slot:0b}
$execute if score @s atk matches 264 unless items entity @s armor.chest * run data modify storage minecraft:$(shifter) Chestplate merge value {Slot:0b,id:"minecraft:air"}
# Give muscle
execute if score @s atk matches 264 run item replace entity @s armor.legs with leather_leggings[minecraft:hide_tooltip={},trim={material:blank,pattern:muscle}]
execute if score @s atk matches 264 run item replace entity @s armor.chest with leather_chestplate[minecraft:hide_tooltip={},trim={material:blank,pattern:muscle_gold},enchantment_glint_override=true]
# Give Boots
execute if score @s atk matches 264 run setblock ~ ~2 ~ chest
$execute if score @s atk matches 264 run data modify block ~ ~2 ~ Items append from storage minecraft:$(shifter) Boots
execute if score @s atk matches 264 run item replace entity @s armor.feet from block ~ ~2 ~ container.0
execute if score @s atk matches 264 run setblock ~ ~2 ~ air replace

## Save Helmet
$execute if score @s atk matches 263 if items entity @s armor.head * run data modify storage minecraft:$(shifter) Helmet set from entity @s Inventory[{Slot:103b}]
$execute if score @s atk matches 263 if items entity @s armor.head * run data modify storage minecraft:$(shifter) Helmet merge value {Slot:0b}
$execute if score @s atk matches 263 unless items entity @s armor.head * run data modify storage minecraft:$(shifter) Helmet merge value {Slot:0b,id:"minecraft:air"}
# Give muscle
execute if score @s atk matches 263 run item replace entity @s armor.chest with leather_chestplate[minecraft:hide_tooltip={},trim={material:blank,pattern:muscle}]
execute if score @s atk matches 263 run item replace entity @s armor.head with leather_helmet[minecraft:hide_tooltip={},trim={material:blank,pattern:muscle_gold},enchantment_glint_override=true]
# Give Leggings
execute if score @s atk matches 263 run setblock ~ ~2 ~ chest
$execute if score @s atk matches 263 run data modify block ~ ~2 ~ Items append from storage minecraft:$(shifter) Leggings
execute if score @s atk matches 263 run item replace entity @s armor.legs from block ~ ~2 ~ container.0
execute if score @s atk matches 263 run setblock ~ ~2 ~ air replace

# Give muscle
execute if score @s atk matches 262 run item replace entity @s armor.head with leather_helmet[minecraft:hide_tooltip={},trim={material:blank,pattern:muscle}]
# Give Chestplate
execute if score @s atk matches 262 run setblock ~ ~2 ~ chest
$execute if score @s atk matches 262 run data modify block ~ ~2 ~ Items append from storage minecraft:$(shifter) Chestplate
execute if score @s atk matches 262 run item replace entity @s armor.chest from block ~ ~2 ~ container.0
execute if score @s atk matches 262 run setblock ~ ~2 ~ air replace

# Give Helmet
execute if score @s atk matches 260 run setblock ~ ~2 ~ chest
$execute if score @s atk matches 260 run data modify block ~ ~2 ~ Items append from storage minecraft:$(shifter) Helmet
execute if score @s atk matches 260 run item replace entity @s armor.head from block ~ ~2 ~ container.0
execute if score @s atk matches 260 run setblock ~ ~2 ~ air replace

execute if score @s atk matches 260 run particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 force
$execute if score @s atk matches 260 run function snc:shifters/human/transform {"shifter":$(shifter),"name":"$(name)"}
execute if score @s atk matches 260 run scoreboard players reset @s atk