#execute on vehicle run effect give @s slow_falling 1 0 true
$tag @s add snc.jaw.wall.$(side)
tag @s add snc.jaw.wall

$execute on vehicle at @s rotated as @n[tag=transform] rotated ~ -$(angle) run function snc:logic/motion/generic {"score":"jaw_vars","strength":0.006, "unstoppable":"false"}