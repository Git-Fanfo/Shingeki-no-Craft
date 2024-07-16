## ANIMATE
execute if score walk cart_vars matches 0 run scoreboard players set walk cart_vars 20
execute if score idle cart_vars matches 0 run scoreboard players set idle cart_vars 40

# Born
execute if score state cart_vars matches 1 run function snc:shifters/mobs/cart/animate/born
# Idle
execute if score state cart_vars matches 3 run function snc:shifters/mobs/cart/animate/idle
execute if score state cart_vars matches 3..5 on vehicle run attribute @s minecraft:generic.scale base set 1.5
# Sneak
execute if score state cart_vars matches 2 run function snc:shifters/mobs/cart/action/movement/sneak
# Walk and Run
execute if score state cart_vars matches 4..5 run function snc:shifters/mobs/cart/animate/walk

# Slam of the Lefties
#execute if score state cart_vars matches 11 run function snc:shifters/mobs/cart/animate/slam
# Jump
execute if score state cart_vars matches 11 run function snc:shifters/mobs/cart/animate/jumping

execute if score state cart_vars matches 9 run function snc:shifters/mobs/cart/animate/death

execute if score idle cart_vars matches 1.. run scoreboard players remove idle cart_vars 1
execute if score action cart_vars matches 1.. run scoreboard players remove action cart_vars 1
execute if score walk cart_vars matches 1.. run scoreboard players remove walk cart_vars 1