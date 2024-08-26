## Grabbed player
execute on target if entity @s[type=player,tag=!titan,tag=!transform,distance=..5] run function snc:logic/uuid/gen
execute on target if entity @s[type=!player,tag=!titan,tag=!transform,distance=..7] run function snc:logic/uuid/gen
## Trigger animation
execute on target if entity @s[distance=..8] run return 1