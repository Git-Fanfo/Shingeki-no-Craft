advancement revoke @s only snc:shifters/attack/punch
# combo_punch:
# -1 = ready > 1 = trigger > -2 = ready > 2 = trigger
execute if score combo_punch attack_vars matches -1 run scoreboard players set combo_punch attack_vars 1
execute if score combo_punch attack_vars matches -2 run scoreboard players set combo_punch attack_vars 2

# If not attacking finish combo
execute unless score state attack_vars matches 10..30 run scoreboard players set combo_punch attack_vars 0
# If it doesn't have combo then attack normally
execute if score combo_punch attack_vars matches ..0 as 0000007f-0000-007f-0000-007f00000003 on passengers if entity @s[tag=aj.attack.root,tag=!aj.attack.animation.punch_1.playing] run function snc:shifters/mobs/attack/animate/punch_1