## Grabbed player
execute on target if entity @s[tag=!titan,tag=!transform,distance=..4] run function snc:logic/uuid/gen {"storage":"titan"}
## Trigger animation
execute on target if entity @s[distance=..10] run return 1