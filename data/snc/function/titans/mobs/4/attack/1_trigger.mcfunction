## Grabbed player
execute on target if entity @s[tag=!titan,tag=!transform,distance=..3] run function snc:logic/uuid/gen
## Trigger animation
execute on target if entity @s[distance=..10] run return 1