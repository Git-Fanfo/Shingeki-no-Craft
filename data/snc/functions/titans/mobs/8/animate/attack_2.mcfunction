# ATTACK
execute if score @s atk matches 69 run playsound minecraft:entity.enderman.scream player @a[distance=..30] ~ ~ ~ 2 0 1
execute if score @s atk matches 69 run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":239}}}
execute if score @s atk matches 68 run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":240}}}
execute if score @s atk matches 67 run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":241}}}
execute if score @s atk matches 66 run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":242}}}
execute if score @s atk matches 65 run tag @s remove attack
execute if score @s atk matches 65 run tag @s add walk