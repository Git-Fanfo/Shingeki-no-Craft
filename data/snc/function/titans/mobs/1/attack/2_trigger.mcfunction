## Grabbed player
execute on target if entity @s[type=player,tag=!titan,tag=!transform,distance=..5] run function snc:logic/uuid/gen {"storage":"titan"}
execute on target if entity @s[type=!player,tag=!titan,tag=!transform,distance=..7] run function snc:logic/uuid/gen {"storage":"titan"}
## Trigger animation
execute on target if entity @s[distance=..8] run return 1