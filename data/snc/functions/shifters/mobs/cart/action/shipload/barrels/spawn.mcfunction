summon item_display ~ ~ ~ {item_display:"head",Tags:["collision","shifter","cart","cart.shipload"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.3f,5.3f,5.3f]},item:{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:504}}}
summon chest_minecart ~ ~ ~ {CustomDisplayTile:1b,Tags:["collision","shifter","cart","cart.module","cart.barrel.1"],DisplayState:{Name:"minecraft:structure_block",Properties:{mode:"corner"}}}
summon chest_minecart ~ ~ ~ {CustomDisplayTile:1b,Tags:["collision","shifter","cart","cart.module","cart.barrel.2"],DisplayState:{Name:"minecraft:structure_block",Properties:{mode:"corner"}}}
summon chest_minecart ~ ~ ~ {CustomDisplayTile:1b,Tags:["collision","shifter","cart","cart.module","cart.barrel.3"],DisplayState:{Name:"minecraft:structure_block",Properties:{mode:"corner"}}}
summon chest_minecart ~ ~ ~ {CustomDisplayTile:1b,Tags:["collision","shifter","cart","cart.module","cart.barrel.4"],DisplayState:{Name:"minecraft:structure_block",Properties:{mode:"corner"}}}
clear @s carrot_on_a_stick{barrels:1b} 1

return 0