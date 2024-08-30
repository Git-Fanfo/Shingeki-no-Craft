## Grabbed player
execute on target if entity @s[tag=!titan,tag=!transform,distance=..5] run function snc:logic/uuid/gen {"storage":"titan"}
## Trigger animation
execute on target if entity @s[distance=..7] run return 1