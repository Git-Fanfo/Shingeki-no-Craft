execute if score consume armor_vars matches 20 at @s run playsound minecraft:aot.attack_bite player @a ~ ~ ~ 5 .75

function snc:shifters/mobs/armor/action/head/main

execute if score consume armor_vars matches 12 anchored eyes positioned ^ ^-3 ^2.5 run function snc:shifters/mobs/armor/action/jaw/damage with storage minecraft:armor

execute if score consume armor_vars matches 1 run tag @s remove consume

execute if score $op.hardening armor_vars matches 1.. run function snc:shifters/mobs/armor/action/hardening/main {"shifter":"armor"}