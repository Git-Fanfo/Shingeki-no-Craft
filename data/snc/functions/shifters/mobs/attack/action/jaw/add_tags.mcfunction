tag @s add consume

## Bite
scoreboard players set consume attack_vars 20
## Consume
execute if score state attack_vars matches 2 if entity @e[distance=1..15,tag=!attack,tag=!aj.attack.locator.right_hand] on vehicle on passengers if entity @s[tag=aj.attack.root] run function snc:shifters/mobs/attack/animate/consume