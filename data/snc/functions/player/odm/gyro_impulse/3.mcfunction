execute as @e[distance=.1..3,type=!creeper] run damage @s 9 player_attack by @p
item replace entity @s armor.head with carved_pumpkin{CustomModelData:23,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:15,Operation:0,UUID:[I;1131135009,-388873229,-1628344244,-755712755],Slot:"head"}]} 1
#replaceitem entity @s armor.head carved_pumpkin{CustomModelData:23,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:15,Operation:0,UUID:[I;1131135009,-388873229,-1628344244,-755712755],Slot:"head"}]} 1
item replace entity @s armor.chest with air
#replaceitem entity @s armor.chest air
item replace entity @s armor.legs with air
#replaceitem entity @s armor.legs air
item replace entity @s armor.feet with air
#replaceitem entity @s armor.legs air