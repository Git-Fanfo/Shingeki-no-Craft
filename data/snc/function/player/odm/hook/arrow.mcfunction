execute on origin rotated as @s run tp ~ ~ ~
execute on origin run tag @s add snc.wire.air
execute on origin if entity @s[tag=snc.wire.retract] run kill @n[tag=snc.hook]
execute unless data entity @s {life:0s} run kill