## Is shifter is not added again it means the player is not a shifter anymore, then it has to be killed
tag @s remove shifter

##### HOW TO CREATE A SHIFTER #####
# Check if still a shifter
execute if score @s cart_vars matches 1.. run tag @s add shifter
execute if score @s colossal_vars matches 1.. run tag @s add shifter
execute if score @s attack_vars matches 1.. run tag @s add shifter
execute if score @s beast_vars matches 1.. run tag @s add shifter
# Timer
execute if score @s shifter_vars matches 1 run \
    function snc:shifters/human/timer/main with storage minecraft:cart
execute if score @s shifter_vars matches 2 run \
    function snc:shifters/human/timer/main with storage minecraft:colossal
execute if score @s shifter_vars matches 3 run \
    function snc:shifters/human/timer/main with storage minecraft:attack
execute if score @s shifter_vars matches 4 run \
    function snc:shifters/human/timer/main with storage minecraft:beast
    
## Removes shifter and kills the user, generally used when the player used cheats, was offline during the Curse of Ymir
execute as @s[tag=!shifter] run function snc:shifters/human/remove

## Shifters player controler
execute as @s[tag=transform] run function snc:shifters/check