tag @s add consume

## Bite
scoreboard players set consume armor_vars 20
## Grab
# execute if score state armor_vars matches 2 if entity @e[distance=1..15,tag=!armor,tag=!aj.armor.locator.right_hand] on vehicle on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/animate/grab
