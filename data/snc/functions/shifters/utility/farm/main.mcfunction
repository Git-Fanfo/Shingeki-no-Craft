advancement revoke @s only snc:shifters/cart/farm
execute unless score #farm cart_vars matches -10.. run scoreboard players set #farm cart_vars -1

execute if score #farm cart_vars matches -1 run function snc:shifters/utility/farm/enable
execute if score #farm cart_vars matches 1 run function snc:shifters/utility/farm/disable