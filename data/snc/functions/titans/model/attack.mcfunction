## Add tag to titan
$execute \
    if entity @p[tag=!titan,distance=..$(distance)] run \
        tag @s add attack
## Add tag wrap
$execute \
    if entity @s[tag=attack] on vehicle on target run \
        tag @s[tag=!titan,tag=!transform,distance=..$(distance)] add wrap