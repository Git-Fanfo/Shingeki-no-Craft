# Add tag
execute unless entity @s[type=player,tag=titan] run effect give @s[distance=..7,tag=!transform] glowing 1 0 true
execute unless entity @s[type=player,tag=titan] as @s[distance=..7] run tag @s[distance=..7,tag=!transform] add beast_wrap
# Remove tag
execute unless score $hold beast_vars matches 1 as @s[distance=7..] run tag @s remove beast_wrap
execute unless score $hold beast_vars matches 1 as @s[distance=7..] run effect clear @s glowing