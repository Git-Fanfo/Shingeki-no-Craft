execute unless score @s shifter_vars matches 1 run playsound minecraft:item.shield.break player @s ~ ~ ~ 2 1
execute unless score @s shifter_vars matches 1 run tellraw @s [{"translate":"aot.ability.shipload.not_cart","color":"red"}]
execute if score @s shifter_vars matches 1 if predicate snc:cart/has_barrels run function snc:shifters/mobs/cart/action/shipload/barrels/spawn
execute if score @s shifter_vars matches 1 if predicate snc:cart/has_turrets run function snc:shifters/mobs/cart/action/shipload/turrets/spawn