## Grabbed player
execute on target positioned ~ ~-3 ~ if entity @s[tag=!titan,tag=!transform,distance=..6] run function snc:logic/uuid/gen
## Trigger animation
execute on target if entity @s[distance=..8] run return 1