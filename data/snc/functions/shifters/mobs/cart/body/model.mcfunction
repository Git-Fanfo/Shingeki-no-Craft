## ANIMATE
execute if score walk cart_vars matches 0 run scoreboard players set walk cart_vars 20
execute if score idle cart_vars matches 0 run scoreboard players set idle cart_vars 40

# Born
execute if score state cart_vars matches 100 run function snc:shifters/mobs/cart/animate/born
# If doesn't find player then die
execute as @s[tag=!dead] unless entity @a[scores={cart_vars=1},tag=transform] run tag @s add dead
# Idle
execute if score state cart_vars matches 3 run function snc:shifters/mobs/cart/animate/idle
# Slam of the Lefties
execute if score state cart_vars matches 11 run function snc:shifters/mobs/cart/animate/slam
# Jump
execute if score state cart_vars matches 5 run function snc:shifters/mobs/cart/animate/jump
# Sneak
execute if score state cart_vars matches 2 run function snc:shifters/mobs/cart/animate/sneak
# Walk
execute if score state cart_vars matches 4 run function snc:shifters/mobs/cart/animate/walk

## HEAD (100 is to not change while born)
execute if score consume cart_vars matches ..-1 unless score state cart_vars matches 100 on vehicle on vehicle on passengers as @s[type=player] if predicate snc:has_effect_resistance run item replace entity @s armor.head with carved_pumpkin{CustomModelData:4}
execute if score consume cart_vars matches ..-1 unless score state cart_vars matches 100 on vehicle on vehicle on passengers as @s[type=player] unless predicate snc:has_effect_resistance run item replace entity @s armor.head with carved_pumpkin{CustomModelData:7}

execute if score idle cart_vars matches 1.. run scoreboard players remove idle cart_vars 1
execute if score action cart_vars matches 1.. run scoreboard players remove action cart_vars 1
execute if score walk cart_vars matches 1.. run scoreboard players remove walk cart_vars 1