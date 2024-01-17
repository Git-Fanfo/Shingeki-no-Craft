##### HOW TO CREATE A SHIFTER #####
execute if score @s shifter_vars matches 1 run \
    function snc:shifters/mobs/cart/player with storage minecraft:cart
execute if score @s shifter_vars matches 2 run \
    function snc:shifters/mobs/colossal/player with storage minecraft:colossal
execute if score @s shifter_vars matches 3 run \
    function snc:shifters/mobs/player with storage minecraft:attack
execute if score @s shifter_vars matches 4 run \
    function snc:shifters/mobs/player with storage minecraft:beast

execute as @a[distance=2..5] run tag @s add barrier