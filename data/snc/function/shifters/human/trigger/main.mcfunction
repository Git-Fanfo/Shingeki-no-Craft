particle minecraft:electric_spark ~ ~1 ~ .2 .5 .2 1 10 force

## Save Boots
$execute if score @s atk matches 266 if items entity @s armor.feet * run data modify storage minecraft:$(shifter) Boots set from entity @s Inventory[{Slot:100b}]
$execute if score @s atk matches 266 if items entity @s armor.feet * run data modify storage minecraft:$(shifter) Boots merge value {Slot:0b}
$execute if score @s atk matches 266 unless items entity @s armor.feet * run data modify storage minecraft:$(shifter) Boots merge value {Slot:0b,id:"minecraft:air"}
# Give muscle
execute if score @s atk matches 266 run item replace entity @s armor.feet with minecraft:mushroom_stew[!minecraft:consumable,minecraft:equippable={slot:feet,model:"muscle_gold"},enchantments={levels:{"minecraft:binding_curse":1}},minecraft:enchantment_glint_override=false,custom_data={snc_blank:true}]

## Save Leggings
$execute if score @s atk matches 265 if items entity @s armor.legs * run data modify storage minecraft:$(shifter) Leggings set from entity @s Inventory[{Slot:101b}]
$execute if score @s atk matches 265 if items entity @s armor.legs * run data modify storage minecraft:$(shifter) Leggings merge value {Slot:0b}
$execute if score @s atk matches 265 unless items entity @s armor.legs * run data modify storage minecraft:$(shifter) Leggings merge value {Slot:0b,id:"minecraft:air"}
# Give muscle
execute if score @s atk matches 265 run item replace entity @s armor.feet with minecraft:mushroom_stew[!minecraft:consumable,minecraft:equippable={slot:feet,model:"muscle"},enchantments={levels:{"minecraft:binding_curse":1}},minecraft:enchantment_glint_override=false,custom_data={snc_blank:true}]
execute if score @s atk matches 265 run item replace entity @s armor.legs with minecraft:mushroom_stew[!minecraft:consumable,minecraft:equippable={slot:legs,model:"muscle_gold"},enchantments={levels:{"minecraft:binding_curse":1}},minecraft:enchantment_glint_override=false,custom_data={snc_blank:true}]

## Save Chest
$execute if score @s atk matches 264 if items entity @s armor.chest * run data modify storage minecraft:$(shifter) Chestplate set from entity @s Inventory[{Slot:102b}]
$execute if score @s atk matches 264 if items entity @s armor.chest * run data modify storage minecraft:$(shifter) Chestplate merge value {Slot:0b}
$execute if score @s atk matches 264 unless items entity @s armor.chest * run data modify storage minecraft:$(shifter) Chestplate merge value {Slot:0b,id:"minecraft:air"}
# Give muscle
execute if score @s atk matches 264 run item replace entity @s armor.legs with minecraft:mushroom_stew[!minecraft:consumable,minecraft:equippable={slot:legs,model:"muscle"},enchantments={levels:{"minecraft:binding_curse":1}},minecraft:enchantment_glint_override=false,custom_data={snc_blank:true}]
execute if score @s atk matches 264 run item replace entity @s armor.chest with minecraft:mushroom_stew[!minecraft:consumable,minecraft:equippable={slot:chest,model:"muscle_gold"},enchantments={levels:{"minecraft:binding_curse":1}},minecraft:enchantment_glint_override=false,custom_data={snc_blank:true}]
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
execute if score @s atk matches 263 run item replace entity @s armor.chest with minecraft:mushroom_stew[!minecraft:consumable,minecraft:equippable={slot:chest,model:"muscle"},enchantments={levels:{"minecraft:binding_curse":1}},minecraft:enchantment_glint_override=false,custom_data={snc_blank:true}]
execute if score @s atk matches 263 run item replace entity @s armor.head with minecraft:mushroom_stew[!minecraft:consumable,minecraft:equippable={slot:head,model:"muscle_gold"},enchantments={levels:{"minecraft:binding_curse":1}},minecraft:enchantment_glint_override=false,custom_data={snc_blank:true}]
# Give Leggings
execute if score @s atk matches 263 run setblock ~ ~2 ~ chest
$execute if score @s atk matches 263 run data modify block ~ ~2 ~ Items append from storage minecraft:$(shifter) Leggings
execute if score @s atk matches 263 run item replace entity @s armor.legs from block ~ ~2 ~ container.0
execute if score @s atk matches 263 run setblock ~ ~2 ~ air replace

# Give muscle
execute if score @s atk matches 262 run item replace entity @s armor.head with minecraft:mushroom_stew[!minecraft:consumable,minecraft:equippable={slot:head,model:"muscle"},enchantments={levels:{"minecraft:binding_curse":1}},minecraft:enchantment_glint_override=false,custom_data={snc_blank:true}]
# Give Chestplate
execute if score @s atk matches 262 run setblock ~ ~2 ~ chest
$execute if score @s atk matches 262 run data modify block ~ ~2 ~ Items append from storage minecraft:$(shifter) Chestplate
execute if score @s atk matches 262 run item replace entity @s armor.chest from block ~ ~2 ~ container.0
execute if score @s atk matches 262 run setblock ~ ~2 ~ air replace

# Give Helmet
execute if score @s atk matches 261 run setblock ~ ~2 ~ chest
$execute if score @s atk matches 261 run data modify block ~ ~2 ~ Items append from storage minecraft:$(shifter) Helmet
execute if score @s atk matches 261 run item replace entity @s armor.head from block ~ ~2 ~ container.0
execute if score @s atk matches 261 run setblock ~ ~2 ~ air replace

execute if score @s atk matches 256 run particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 force
$execute if score @s atk matches 256 run function snc:shifters/human/transform {"shifter":$(shifter),"name":"$(name)"}
## Spawn
$execute if score @s atk matches 256 run \
    function snc:shifters/mobs/init {\
        "id":"$(id)", \
        "shifter":"$(shifter)", \
        "bossbar_display":"$(bossbar_display)", \
        "bossbar_color":$(bossbar_color), \
        "bossbar_style":$(bossbar_style), \
        "hp":$(hp), \
        "walk_speed":$(walk_speed), \
        "type":$(type), \
        "step_height":$(step_height), \
        "scale_vehicle":$(scale_vehicle), \
        "scale_player":$(scale_player), \
        "entity_range":$(entity_range) \
        }

execute if score @s atk matches 256 run scoreboard players reset @s atk