## Grabbed player
execute on target if entity @s[tag=!titan,tag=!transform,distance=..4] run function snc:logic/uuid/gen
## Trigger animation
execute on target if entity @s[distance=..7] run return 1