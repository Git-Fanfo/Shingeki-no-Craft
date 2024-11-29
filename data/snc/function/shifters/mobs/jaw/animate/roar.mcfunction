tag @s remove consume

execute if score consume armor_vars matches 220 as @a[distance=..90] at @s run playsound minecraft:aot.shifters.armor.roar player @s ~ ~ ~ 8 1

function snc:shifters/mobs/armor/action/head/main

execute if score consume armor_vars matches 61 run scoreboard players set consume armor_vars 0

execute if score $op.hardening armor_vars matches 1.. run function snc:shifters/mobs/armor/action/hardening/main {"shifter":"armor"}