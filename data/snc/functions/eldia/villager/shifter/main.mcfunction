effect give @s resistance 10 255 true
effect give @s slowness 1 0 true
execute run advancement grant @p[distance=0..5] only snc:shifters/aura

##### HOW TO CREATE A SHIFTER #####
execute as @s[scores={cart_vars=1}] run function snc:eldia/villager/shifter/cart
execute as @s[scores={colossal_vars=1}] run function snc:eldia/villager/shifter/colossal
execute as @s[scores={attack_vars=1}] run function snc:eldia/villager/shifter/attack
execute as @s[scores={beast_vars=1}] run function snc:eldia/villager/shifter/beast

execute if predicate snc:is_hurt run function snc:shifters/transfer/hit