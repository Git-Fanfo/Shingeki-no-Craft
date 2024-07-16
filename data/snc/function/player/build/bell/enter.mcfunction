tellraw @s [{"translate":"Entering now: "},{"selector":"@e[tag=village,sort=nearest,limit=1]","color": "gold"}]
execute as @e[tag=village,sort=nearest,limit=1] if entity @s[tag=event] run function snc:logic/event/start
tag @s add in_village