# Save the current position to #posy0
$execute store result score #posy0 $(shifter)_vars run data get entity @s Pos[1] 1

$execute summon skeleton_horse run function snc:shifters/mobs/spawn {\
    "shifter":"$(shifter)", \
    "walk_speed":$(walk_speed), \
    "jump":$(jump), \
    "step_height":$(step_height) \
    }

$bossbar add $(shifter)_health {"text":"\$(bossbar_display)"}
$bossbar set minecraft:$(shifter)_health color $(bossbar_color)
$bossbar set minecraft:$(shifter)_health max $(hp)
$bossbar set minecraft:$(shifter)_health style notched_6

$scoreboard players set state $(shifter)_vars 1
effect give @s resistance 5 4 true
attribute @s generic.scale base set 4.5

execute store result score @s gamemode run data get entity @s playerGameType
gamemode survival