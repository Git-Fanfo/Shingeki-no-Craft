# Save the current position to #posy0
$execute store result score #posy0 $(shifter)_vars run data get entity @s Pos[1] 1

$execute summon $(type) run function snc:shifters/mobs/spawn {\
    "shifter":"$(shifter)", \
    "walk_speed":$(walk_speed), \
    "jump":$(jump), \
    "step_height":$(step_height), \
    "scale_vehicle":$(scale_vehicle) \    
    }

$bossbar add $(shifter)_health {"text":"\$(bossbar_display)"}
$bossbar set minecraft:$(shifter)_health color $(bossbar_color)
$bossbar set minecraft:$(shifter)_health max $(hp)
$bossbar set minecraft:$(shifter)_health style $(bossbar_style)

$scoreboard players set state $(shifter)_vars 1
$scoreboard players set consume $(shifter)_vars 0
$scoreboard players set $gamemode $(shifter)_vars 1
$scoreboard players set $vanish $(shifter)_vars 0
$scoreboard players set $mov $(shifter)_vars 80

$execute if score @s armor_vars matches 1 run scoreboard players set $hardening $(shifter)_vars 0
$execute if score @s armor_vars matches 1 run scoreboard players set $op.hardening $(shifter)_vars 12

scoreboard players reset @s snc.ender
scoreboard players reset @s snc.chest
scoreboard players reset @s snc.barrel
scoreboard players reset @s snc.shulker
scoreboard players reset @s snc.trap

effect give @s resistance 5 4 true
$attribute @s generic.scale base set $(scale_player)
$attribute @s player.entity_interaction_range base set $(entity_range)

## UNIQUE: CART
$execute unless score @s cart_vars matches 1.. run scoreboard players remove $energy $(shifter)_vars 360

execute store result score @s gamemode run data get entity @s playerGameType
gamemode survival