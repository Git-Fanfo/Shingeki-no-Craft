## Grabbed player
execute on target if entity @s[type=player,tag=!titan,tag=!transform,distance=..6] run function snc:logic/uuid/gen {"storage":"titan"}
## Trigger animation
execute on target if entity @s[distance=..7] run return 1