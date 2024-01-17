tag @s add consume

## Bite
scoreboard players set consume beast_vars 20
## Grab
# execute if score state beast_vars matches 2 if entity @e[distance=1..15,tag=!beast,tag=!aj.beast.locator.right_hand] on vehicle on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/animate/grab
#function snc:shifters/mobs/beast/animate/grab
