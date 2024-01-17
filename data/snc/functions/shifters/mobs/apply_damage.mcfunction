execute store result score @s apply_damage run data get entity @s Health
scoreboard players operation @s apply_damage -= base apply_damage

$execute if score @s apply_damage matches -1 run damage @p[scores={$(shifter)_vars=1}] 1 minecraft:player_attack
$execute if score @s apply_damage matches -2 run damage @p[scores={$(shifter)_vars=1}] 1 minecraft:player_attack
$execute if score @s apply_damage matches -3 run damage @p[scores={$(shifter)_vars=1}] 2 minecraft:player_attack
$execute if score @s apply_damage matches -4 run damage @p[scores={$(shifter)_vars=1}] 2 minecraft:player_attack
$execute if score @s apply_damage matches -5 run damage @p[scores={$(shifter)_vars=1}] 3 minecraft:player_attack
$execute if score @s apply_damage matches -6 run damage @p[scores={$(shifter)_vars=1}] 3 minecraft:player_attack
$execute if score @s apply_damage matches -7 run damage @p[scores={$(shifter)_vars=1}] 4 minecraft:player_attack
$execute if score @s apply_damage matches -8 run damage @p[scores={$(shifter)_vars=1}] 4 minecraft:player_attack
$execute if score @s apply_damage matches -9 run damage @p[scores={$(shifter)_vars=1}] 5 minecraft:player_attack
$execute if score @s apply_damage matches -10 run damage @p[scores={$(shifter)_vars=1}] 5 minecraft:player_attack
$execute if score @s apply_damage matches -11 run damage @p[scores={$(shifter)_vars=1}] 6 minecraft:player_attack
$execute if score @s apply_damage matches -12 run damage @p[scores={$(shifter)_vars=1}] 6 minecraft:player_attack
$execute if score @s apply_damage matches -13 run damage @p[scores={$(shifter)_vars=1}] 7 minecraft:player_attack
$execute if score @s apply_damage matches -14 run damage @p[scores={$(shifter)_vars=1}] 7 minecraft:player_attack
$execute if score @s apply_damage matches -15 run damage @p[scores={$(shifter)_vars=1}] 8 minecraft:player_attack
$execute if score @s apply_damage matches -16 run damage @p[scores={$(shifter)_vars=1}] 8 minecraft:player_attack
$execute if score @s apply_damage matches -17 run damage @p[scores={$(shifter)_vars=1}] 9 minecraft:player_attack
$execute if score @s apply_damage matches -18 run damage @p[scores={$(shifter)_vars=1}] 9 minecraft:player_attack
$execute if score @s apply_damage matches -19 run damage @p[scores={$(shifter)_vars=1}] 10 minecraft:player_attack
$execute if score @s apply_damage matches -20 run damage @p[scores={$(shifter)_vars=1}] 10 minecraft:player_attack
$execute if score @s apply_damage matches -21 run damage @p[scores={$(shifter)_vars=1}] 11 minecraft:player_attack
$execute if score @s apply_damage matches -22 run damage @p[scores={$(shifter)_vars=1}] 11 minecraft:player_attack
$execute if score @s apply_damage matches -23 run damage @p[scores={$(shifter)_vars=1}] 12 minecraft:player_attack
$execute if score @s apply_damage matches -24 run damage @p[scores={$(shifter)_vars=1}] 12 minecraft:player_attack
$execute if score @s apply_damage matches -25 run damage @p[scores={$(shifter)_vars=1}] 13 minecraft:player_attack
$execute if score @s apply_damage matches -26 run damage @p[scores={$(shifter)_vars=1}] 13 minecraft:player_attack
$execute if score @s apply_damage matches -27 run damage @p[scores={$(shifter)_vars=1}] 14 minecraft:player_attack
$execute if score @s apply_damage matches -28 run damage @p[scores={$(shifter)_vars=1}] 14 minecraft:player_attack
$execute if score @s apply_damage matches -29 run damage @p[scores={$(shifter)_vars=1}] 15 minecraft:player_attack
$execute if score @s apply_damage matches -30 run damage @p[scores={$(shifter)_vars=1}] 15 minecraft:player_attack
$execute if score @s apply_damage matches -31 run damage @p[scores={$(shifter)_vars=1}] 16 minecraft:player_attack
$execute if score @s apply_damage matches -32 run damage @p[scores={$(shifter)_vars=1}] 16 minecraft:player_attack
$execute if score @s apply_damage matches -33 run damage @p[scores={$(shifter)_vars=1}] 17 minecraft:player_attack
$execute if score @s apply_damage matches -34 run damage @p[scores={$(shifter)_vars=1}] 17 minecraft:player_attack
$execute if score @s apply_damage matches -35 run damage @p[scores={$(shifter)_vars=1}] 18 minecraft:player_attack
$execute if score @s apply_damage matches -36 run damage @p[scores={$(shifter)_vars=1}] 18 minecraft:player_attack
$execute if score @s apply_damage matches -37 run damage @p[scores={$(shifter)_vars=1}] 19 minecraft:player_attack
$execute if score @s apply_damage matches -38 run damage @p[scores={$(shifter)_vars=1}] 19 minecraft:player_attack
$execute if score @s apply_damage matches -39 run damage @p[scores={$(shifter)_vars=1}] 20 minecraft:player_attack
$execute if score @s apply_damage matches -40 run damage @p[scores={$(shifter)_vars=1}] 20 minecraft:player_attack

data modify entity @s Health set value 1024f