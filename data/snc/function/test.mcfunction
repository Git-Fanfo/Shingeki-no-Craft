data modify storage minecraft:shifters Inventory set value [{count:1, Slot:0b, id: "minecraft:apple", components: {hide_tooltip:{}, item_model:"item/blanak",custom_data:  {atk_shifter: 1b}}},{count:1, Slot:1b, id: "minecraft:apple", components: {hide_tooltip:{}, item_model:"item/blanak",custom_data:  {atk_shifter: 1b}}}]


execute as @n[tag=aj.cart.root] run data merge entity @s {view_range:50f,item:{id:'minecraft:turtle_scute',Count:1b,components:{"item_model":"shifters/cart/idle/1"}}}