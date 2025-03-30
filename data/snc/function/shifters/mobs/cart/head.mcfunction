$execute if score $mask cart_vars matches 1 unless score @s jaw_vars matches 1 run function snc:shifters/mobs/head {"shifter":"cart", "type":"mask", "frame":$(frame)}
$execute if score $mask cart_vars matches 1 if score @s jaw_vars matches 1 run function snc:shifters/mobs/head {"shifter":"cart", "type":"mask_jaw", "frame":$(frame)}
$execute if score $mask cart_vars matches 0 unless score @s jaw_vars matches 1 run function snc:shifters/mobs/head {"shifter":"cart", "type":"unmask", "frame":$(frame)}
$execute if score $mask cart_vars matches 0 if score @s jaw_vars matches 1 run function snc:shifters/mobs/head {"shifter":"cart", "type":"unmask_jaw", "frame":$(frame)}

execute if score $gamemode cart_vars matches -1 run item replace entity @s[tag=transform] armor.head with carved_pumpkin[item_model="shifters/cart/bite/farm"]